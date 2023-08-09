# wyhash
[GitHub](https://github.com/wangyi-fudan/wyhash)

> The FASTEST QUALITY hash function, random number generators (PRNG) and hash map.

## Rust
[wyhash-rs](https://github.com/eldruin/wyhash-rs/tree/master)

For `u32`:
```rust
use core::hash::Hasher;

pub type BuildWyHashU32Hasher = core::hash::BuildHasherDefault<WyHashU32>;

/// A specialized WyHash hasher for `u32`.
/// 
/// See https://github.com/eldruin/wyhash-rs/blob/8707fbe33bcd8354819712a93a4457cc83c367c2/src/final3/functions.rs
/// for the original implementation.
#[derive(Clone)]
pub struct WyHashU32 {
    a: u64,
}

impl Default for WyHashU32 {
    fn default() -> Self {
        WyHashU32 {
            a: 0,
        }
    }
}

impl Hasher for WyHashU32 {
    #[inline]
    fn write(&mut self, bytes: &[u8]) {
        debug_assert_eq!(bytes.len(), 4);
        let v = u32::from_ne_bytes(unsafe { *(bytes.as_ptr() as *const [u8; 4]) }) as u64;
        self.a = v << 32 | v;
    }

    #[inline]
    fn finish(&self) -> u64 {
        const P0: u64 = 0xa076_1d64_78bd_642f;
        const P1: u64 = 0xe703_7ed1_a0b4_28db;

        #[inline]
        fn wymum(a: u64, b: u64) -> u64 {
            let r = u128::from(a) * u128::from(b);
            ((r >> 64) ^ r) as u64
        }

        wymum(P1 ^ 4, wymum(self.a ^ P1, self.a ^ P0))
    }
}
```