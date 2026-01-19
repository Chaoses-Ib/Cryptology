#import "@local/ib:0.1.0": *
#title[ChaCha]
#a-badge[https://en.wikipedia.org/wiki/Salsa20#ChaCha_variant]

#md(`
[The design of Chacha20](https://loup-vaillant.fr/tutorials/chacha20-design) ([Hacker News](https://news.ycombinator.com/item?id=13364424))

[Do the ChaCha: better mobile performance with cryptography](https://blog.cloudflare.com/do-the-chacha-better-mobile-performance-with-cryptography/)

`)

= Rounds
- 20
- 12: eSTREAM
- 8: Aumasson

#q[
Aumasson argues in 2020 that 8 rounds of ChaCha (ChaCha8) probably provides enough resistance to future cryptanalysis for the same security level, yielding a 2.5× speedup.
#footnote[Aumasson, Jean-Philippe. “Too Much Crypto.” No. 2019/1492. Preprint, 2019. Cryptology ePrint Archive (2019/1492). https://eprint.iacr.org/2019/1492.]
<aumassonTooMuchCrypto2019>
A compromise ChaCha12 (based on the eSTREAM recommendation of a 12-round Salsa) also sees some use.
The eSTREAM benchmarking suite includes ChaCha8 and ChaCha12.
]

= Implementations
Rust:
- #a[RustCrypto/stream-ciphers/chacha20][https://github.com/RustCrypto/stream-ciphers/tree/master/chacha20]
  #a-badge[https://docs.rs/chacha20/]
  - Custom rounds
  - Soft, SSE2/AVX2, NEON
- #a[silverstillisntgold/chachacha: SIMD optimized implementations of the Chacha stream cipher][https://github.com/silverstillisntgold/chachacha]
  - Soft, SSE2/AVX2/AVX512, NEON
- #a[tokio_chacha20: Encrypt/Decrypt async stream data (`AsyncRead/Write`) using (X)ChaCha20][https://github.com/Banyc/tokio_chacha20]
- #a[orion: Usable, easy and safe pure-Rust crypto][https://github.com/orion-rs/orion]
- #a[typed-io/cryptoxide: crypto primitives in pure rust - wasm compatible - maintained fork of rust-crypto][https://github.com/typed-io/cryptoxide]
- #a[openRings/purecrypt: Minimal, readable, dependency-free implementations of modern cryptographic primitives in pure Rust][https://github.com/openRings/purecrypt]

#md(`
Python:
- [Pure Python Salsa and ChaCha](https://github.com/oconnor663/pure_python_salsa_chacha)
- [pts/chacha20: Pure Python 2 and Python 3 implementations of the ChaCha20 stream cipher](https://github.com/pts/chacha20)

易语言：
- [ChaCha20](ChaCha20.e)

`)
