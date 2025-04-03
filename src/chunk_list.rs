use std::ops::{Index, IndexMut};

/// a chunk list -- it's just a vector of vectors.
/// for this project i needed an ordered data structure that supported fast indexing and fast removal times.
/// splitting a vector into chunks means that removal requires less memory to be moved around.
pub struct ChunkList<T> {
    chunks: Vec<Vec<T>>,
}

impl<T> ChunkList<T> {
    pub fn new(chunk_me: Vec<T>, chunk_size: usize) -> Self
    where
        T: Clone,
    {
        Self {
            chunks: chunk_me.chunks(chunk_size).map(|s| s.into()).collect(),
        }
    }

    fn get_real_index(&self, mut index: usize) -> (usize, usize) {
        let mut chunk_number = 0;

        for ch in self.chunks.iter() {
            if ch.len() <= index {
                index -= ch.len();
                chunk_number += 1;
            } else {
                break;
            }
        }

        (chunk_number, index)
    }

    pub fn remove(&mut self, index: usize)
    where
        T: Clone,
    {
        let (chunk_number, index) = self.get_real_index(index);
        self.chunks[chunk_number].remove(index);
        if self.chunks[chunk_number].is_empty() {
            self.chunks.remove(chunk_number);
        }
    }

    pub fn len(&self) -> usize {
        self.chunks.iter().map(|chunk| chunk.len()).sum()
    }
}

impl<T> Index<usize> for ChunkList<T> {
    type Output = T;

    fn index(&self, index: usize) -> &Self::Output {
        let (chunk_number, index) = self.get_real_index(index);
        &self.chunks[chunk_number][index]
    }
}

impl<T> IndexMut<usize> for ChunkList<T> {
    fn index_mut(&mut self, index: usize) -> &mut Self::Output {
        let (chunk_number, index) = self.get_real_index(index);
        &mut self.chunks[chunk_number][index]
    }
}

impl<T> IntoIterator for ChunkList<T> {
    type Item = T;
    type IntoIter = std::iter::Flatten<std::vec::IntoIter<Vec<Self::Item>>>;

    fn into_iter(self) -> Self::IntoIter {
        self.chunks.into_iter().flatten()
    }
}
