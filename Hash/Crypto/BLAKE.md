# BLAKE
[Wikipedia](https://en.wikipedia.org/wiki/BLAKE_(hash_function))

> BLAKE is a cryptographic hash function based on Daniel J. Bernstein's ChaCha stream cipher, but a permuted copy of the input block, XORed with round constants, is added before each ChaCha round.

## BLAKE2
[Wikipedia](https://en.wikipedia.org/wiki/BLAKE_(hash_function)#BLAKE2)

> The design goal was to replace the widely used, but broken, MD5 and SHA-1 algorithms in applications requiring high performance in software.
>
> BLAKE2b is faster than MD5, SHA-1, SHA-2, and SHA-3, on 64-bit x86-64 and ARM architectures. BLAKE2 provides better security than SHA-2 and similar to that of SHA-3: immunity to length extension, indifferentiability from a random oracle, etc.

Used by:
- Linux RNG entropy pool
- IPFS
- librsync
- RAR v5
- WireGuard

## BLAKE3
[GitHub](https://github.com/BLAKE3-team/BLAKE3)

> BLAKE3 is a single algorithm with many desirable features (parallelism, XOF, KDF, PRF and MAC), in contrast to BLAKE and BLAKE2, which are algorithm families with multiple variants. BLAKE3 has a binary tree structure, so it supports a practically unlimited degree of parallelism (both SIMD and multithreading) given long enough input. The official Rust and C implementations are dual-licensed as public domain (CC0) and the Apache License.

> BLAKE3 is designed to be as fast as possible. It is consistently a few times faster than BLAKE2. The BLAKE3 compression function is closely based on that of BLAKE2s, with the biggest difference being that the number of rounds is reduced from 10 to 7, a change based on the assumption that current cryptography is too conservative. In addition to providing parallelism, the Merkle tree format also allows for verified streaming (on-the-fly verifying) and incremental updates.

- Rust: [blake3](https://docs.rs/blake3/latest/blake3/)
  > includes optimized implementations for SSE2, SSE4.1, AVX2, AVX-512, NEON, and WASM, with automatic runtime CPU feature detection on x86. The `rayon` feature provides multithreading.

  - [`update`](https://docs.rs/blake3/latest/blake3/struct.Hasher.html#method.update)
    - Wasm: 12 KiB

    > Note that the degree of SIMD parallelism that `update` can use is limited by the size of this input buffer.
  - [`update_rayon`](https://docs.rs/blake3/latest/blake3/struct.Hasher.html#method.update_rayon)
    - Wasm: 12+27=39 KiB

    > To get any performance benefit from multithreading, the input buffer needs to be large. As a rule of thumb on x86_64, `update_rayon` is *slower* than `update` for inputs under 128 KiB. That threshold varies quite a lot across different processors, and it's important to benchmark your specific use case.
  - [`update_reader`](https://docs.rs/blake3/latest/blake3/struct.Hasher.html#method.update_reader)
  - [`update_mmap`](https://docs.rs/blake3/latest/blake3/struct.Hasher.html#method.update_mmap)

    > Not all files can be memory mapped, and memory mapping small files can be slower than reading them the usual way. In those cases, this method will fall back to standard file IO. The heuristic for whether to use memory mapping is currently very simple (file size >= 16 KiB), and it might change at any time.
    > 
    > Like `update`, this method is single-threaded. In this author’s experience, memory mapping improves single-threaded performance by ~10% for large files that are already in cache. This probably varies between platforms, and as always it’s a good idea to benchmark your own use case. In comparison, the multithreaded `update_mmap_rayon` method can have a much larger impact on performance.

    [Performance issues on windows. - Issue #178](https://github.com/BLAKE3-team/BLAKE3/issues/178)
  - [`update_mmap_rayon`](https://docs.rs/blake3/latest/blake3/struct.Hasher.html#method.update_mmap_rayon)

    > For large files that are likely to be in cache, this can be much faster than single-threaded hashing. When benchmarks report that BLAKE3 is 10x or 20x faster than other cryptographic hashes, this is usually what they're measuring. However...
    > 
    > **Performance Warning:** There are cases where multithreading hurts performance. The worst case is [a large file on a spinning disk](https://github.com/BLAKE3-team/BLAKE3/issues/31), where simultaneous reads from multiple threads can cause "thrashing" (i.e. the disk spends more time seeking around than reading data). Windows tends to be somewhat worse about this, in part because it's less likely than Linux to keep very large files in cache. More generally, if your CPU cores are already busy, then multithreading will add overhead without improving performance. If your code runs in different environments that you don't control and can't measure, then unfortunately there's no one-size-fits-all answer for whether multithreading is a good idea.

    [Slow HDD read. - Issue #390 - BLAKE3-team/BLAKE3](https://github.com/BLAKE3-team/BLAKE3/issues/390)
    > The next tricky part is that this performance downside doesn't apply to SSDs or to files cached in RAM. In those cases seeking is cheap or free, and it's common to see a 5-10x performance boost from multithreading. So if we changed the default, the majority of our users would run an order of magnitude slower, and they'd probably never know why. That 5-10x number depends entirely on the number of cores in your CPU of course, but it's going up over time.

  [BLAKE-3: a secure, fast, and parallelizable cryptographic hash function : r/rust](https://www.reddit.com/r/rust/comments/1dt409t/blake3_a_secure_fast_and_parallelizable/)

- JS
  - [connor4312/blake3: BLAKE3 hashing for JavaScript: native Node bindings (where available) and WebAssembly](https://github.com/connor4312/blake3)
  - [Brooooooklyn/blake-hash: Rust Blake hash bindings for Node.js.](https://github.com/Brooooooklyn/blake-hash)
  - [noble-hashes: Audited & minimal JS implementation of hash functions, MACs and KDFs.](https://github.com/paulmillr/noble-hashes#blake-blake2b-blake2s-blake3)
  - [blake3-js: Pure javascript implementation of BLAKE3](https://github.com/rvgrinsven/blake3-js) (discontinued)

  [Blake3: A JavaScript Optimization Case Study | Fleek Network's Blog](https://blog.fleek.network/post/fleek-network-blake3-case-study/)
  - [Any update on packaging this up? - Issue #1 - fleek-network/blake3js-perf](https://github.com/fleek-network/blake3js-perf/issues/1)

Tools:
- b3sum
  - `scoop install b3sum`
- [BLAKE3 Hashing Online](https://connor4312.github.io/blake3/index.html)

Used by:
- [LLVM](https://reviews.llvm.org/D121510)
- IPFS

[Reasons to prefer blake3 over sha256](https://peergos.org/posts/blake3) ([Hacker News](https://news.ycombinator.com/item?id=38249473))
> I have to say it does have one tiny disadvantage over older hashes like SHA-256: its internal state is slightly bigger (due to the tree structure which allows it to be highly parallelizable). This can matter when running on tiny microcontrollers with only a few kilobytes of memory.
