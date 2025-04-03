use std::any::Any;
use std::mem::transmute;

use cranelift::jit::{JITBuilder, JITModule};
use cranelift::module::{DataDescription, FuncId, Linkage, Module};
pub use cranelift::object::object;
use cranelift::object::{ObjectBuilder, ObjectModule};
use cranelift::prelude::*;
use object::write::Object;

use crate::chunk_list::ChunkList;
use crate::ir::IR::{self, *};

pub fn jit(ir: ChunkList<IR>) -> anyhow::Result<()> {
    // set up cranelift module & context
    let mut flag_builder = settings::builder();
    flag_builder.set("use_colocated_libcalls", "false")?;
    flag_builder.set("is_pic", "false")?;
    flag_builder.set("opt_level", "speed")?;
    let isa_builder = cranelift::native::builder()
        .map_err(|msg| anyhow::format_err!("host machine is not supported: {msg}"))?;
    let isa = isa_builder
        .finish(settings::Flags::new(flag_builder))
        .unwrap();
    let builder = JITBuilder::with_isa(isa, cranelift::module::default_libcall_names());
    let mut module = JITModule::new(builder);

    let id = go(ir, &mut module)?;
    module.finalize_definitions()?;

    let entry_ptr = module.get_finalized_function(id);
    let entry = unsafe { transmute::<*const u8, fn() -> ()>(entry_ptr) };

    entry();

    Ok(())
}

pub fn aot(ir: ChunkList<IR>) -> anyhow::Result<Object<'static>> {
    // set up cranelift module & context
    let mut flag_builder = settings::builder();
    flag_builder.set("is_pic", "true")?;
    flag_builder.set("opt_level", "speed")?;
    let isa_builder = cranelift::native::builder()
        .map_err(|msg| anyhow::format_err!("host machine is not supported: {msg}"))?;
    let isa = isa_builder
        .finish(settings::Flags::new(flag_builder))
        .unwrap();
    let builder = ObjectBuilder::new(isa, "boyfriend", cranelift::module::default_libcall_names())?;
    let mut module = ObjectModule::new(builder);

    go(ir, &mut module)?;

    let object = module.finish();

    Ok(object.object)
}

fn go<M: Any + Module>(ir: ChunkList<IR>, module: &mut M) -> anyhow::Result<FuncId> {
    let mut ctx = module.make_context();

    let size_t = module.target_config().pointer_type();

    // initialize entry point
    let mut builder_context = FunctionBuilderContext::new();
    let mut builder = FunctionBuilder::new(&mut ctx.func, &mut builder_context);
    let entry_block = builder.create_block();
    builder.switch_to_block(entry_block);
    builder.seal_block(entry_block);
    let tape_ptr = Variable::from_u32(0);
    builder.declare_var(tape_ptr, size_t);
    let zero = builder.ins().iconst(size_t, 0);
    builder.def_var(tape_ptr, zero);

    // initialize tape
    let tape_id = {
        let mut data_description = DataDescription::new();
        data_description.define_zeroinit(0x10000);
        let tape_data_id = module.declare_data("tape", Linkage::Export, true, false)?;
        module.define_data(tape_data_id, &data_description)?;
        if let Some(jit_module) = (module as &mut dyn Any).downcast_mut::<JITModule>() {
            jit_module.finalize_definitions()?;
        }

        module.declare_data_in_func(tape_data_id, builder.func)
    };

    // initialize dlsym functions with *macro magic*
    macro_rules! dlsym {
        ($(fn $name:ident($($arg:ident),*) $(-> $ret:ident)?;)+) => {
            $(dlsym!(fn $name($($arg),*) $(-> $ret)?);)+
        };

        (fn $name:ident($($arg:ident),*) $(-> $ret:ident)?) => {
            let $name = {
                use types::*;

                let mut sig = module.make_signature();
                $(sig.params.push(AbiParam::new($arg));)*
                $(sig.returns.push(AbiParam::new($ret));)?
                let local_ref = module.declare_function(stringify!($name), Linkage::Import, &sig)?;
                module.declare_func_in_func(local_ref, builder.func)
            };
        };
    }

    dlsym! {
        fn getchar() -> I8;
        fn putchar(I8) -> I64;
        fn memchr(size_t, I8, size_t) -> size_t;
        fn memrchr(size_t, I8, size_t) -> size_t;
    }

    let mut loops = Vec::new();

    for inst in ir {
        match inst {
            Shift { amount } => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let added = builder.ins().iadd_imm(tape_ptr_value, amount as i64);
                let anded = builder.ins().band_imm(added, 0xFFFF);
                builder.def_var(tape_ptr, anded);
            }
            Arithmetic { amount } => {
                let tape_start = builder.ins().symbol_value(size_t, tape_id);

                let tape_ptr_value = builder.use_var(tape_ptr);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                let new_value = builder.ins().iadd_imm(current_value, amount as i64);
                builder.ins().store(MemFlags::new(), new_value, addr, 0);
            }
            LoopStart { .. } => {
                let start_block = builder.create_block();
                let body_block = builder.create_block();
                let after_block = builder.create_block();

                builder.ins().jump(start_block, &[]);
                builder.switch_to_block(start_block);
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                builder
                    .ins()
                    .brif(current_value, body_block, &[], after_block, &[]);

                builder.switch_to_block(body_block);
                builder.seal_block(body_block);

                loops.push((start_block, after_block));
            }
            LoopEnd { .. } => {
                let Some((start_block, after_block)) = loops.pop() else {
                    unreachable!()
                };
                builder.ins().jump(start_block, &[]);

                builder.switch_to_block(after_block);
                builder.seal_block(start_block);
                builder.seal_block(after_block);
            }
            Input => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let call = builder.ins().call(getchar, &[]);
                let call_result = builder.inst_results(call)[0];

                builder.ins().store(MemFlags::new(), call_result, addr, 0);
            }
            Output => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                builder.ins().call(putchar, &[current_value]);
            }
            Zero => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let zero = builder.ins().iconst(types::I8, 0);

                builder.ins().store(MemFlags::new(), zero, addr, 0);
            }
            Multiply {
                amount,
                output_offset,
            } => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                let zero = builder.ins().iconst(types::I8, 0);
                builder.ins().store(MemFlags::new(), zero, addr, 0);

                let amount_value = builder.ins().iconst(types::I8, amount as i64);
                let (mul_result, _overflow) =
                    builder.ins().umul_overflow(current_value, amount_value);

                let output_addr = builder.ins().iadd_imm(addr, output_offset as i64);
                let output_current_value =
                    builder
                        .ins()
                        .load(types::I8, MemFlags::new(), output_addr, 0);
                let (new_value, _overflow) = builder
                    .ins()
                    .uadd_overflow(output_current_value, mul_result);

                builder
                    .ins()
                    .store(MemFlags::new(), new_value, output_addr, 0);
            }
            Move { output_offset } => {
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                let zero = builder.ins().iconst(types::I8, 0);
                builder.ins().store(MemFlags::new(), zero, addr, 0);

                let output_addr = builder.ins().iadd_imm(addr, output_offset as i64);
                let output_current_value =
                    builder
                        .ins()
                        .load(types::I8, MemFlags::new(), output_addr, 0);
                let (new_value, _overflow) = builder
                    .ins()
                    .uadd_overflow(output_current_value, current_value);

                builder
                    .ins()
                    .store(MemFlags::new(), new_value, output_addr, 0);
            }
            anchor_direction @ (AnchorRight | AnchorLeft) => {
                // FIXME: wrap around on overflow (current behaviour: not found -> null ptr -> segfault)
                let tape_ptr_value = builder.use_var(tape_ptr);
                let tape_start = builder.ins().symbol_value(size_t, tape_id);
                let (addr, _overflow) = builder.ins().uadd_overflow(tape_start, tape_ptr_value);
                let current_value = builder.ins().load(types::I8, MemFlags::new(), addr, 0);
                let one = builder.ins().iconst(types::I8, 1);

                let (addr_dec, _overflow) = builder.ins().usub_overflow(addr, one);
                builder.ins().store(MemFlags::new(), zero, addr_dec, 0);

                let main_block = builder.create_block();
                let short_circuit = builder.create_block();
                builder
                    .ins()
                    .brif(current_value, main_block, &[], short_circuit, &[]);
                builder.switch_to_block(main_block);
                builder.seal_block(main_block);
                let anchor_value = builder.ins().iconst(types::I8, 0xFF);
                let max_ptr = builder.ins().iconst(types::I64, 0xFFFF);
                let count = if anchor_direction == AnchorRight {
                    builder.ins().isub(max_ptr, tape_ptr_value)
                } else {
                    tape_ptr_value
                };
                let call = builder.ins().call(
                    if anchor_direction == AnchorRight {
                        memchr
                    } else {
                        memrchr
                    },
                    &[addr, anchor_value, count],
                );
                let call_result = builder.inst_results(call)[0];
                let zero = builder.ins().iconst(types::I8, 0);
                builder.ins().store(MemFlags::new(), zero, call_result, 0);
                let rel_call_result = builder.ins().isub(call_result, tape_start);
                builder.def_var(tape_ptr, rel_call_result);

                builder.switch_to_block(short_circuit);
                builder.seal_block(short_circuit);
            }
        }
    }

    builder.ins().return_(&[]);
    builder.finalize();

    let id = module.declare_function("main", Linkage::Export, &ctx.func.signature)?;
    module.define_function(id, &mut ctx)?;
    module.clear_context(&mut ctx);

    Ok(id)
}
