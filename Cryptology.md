# Cryptology
Books:
- Understanding Cryptography
- [An intensive introduction to cryptography](https://intensecrypto.org/public/)

## Performance
- [eBACS: ECRYPT Benchmarking of Cryptographic Systems](https://bench.cr.yp.to/)
  - [Measurements of stream ciphers](https://bench.cr.yp.to/results-stream.html)
    - AES
- [nlitsme/pyCryptoBenchmarking: benchmarking the python pyCrypto and cryptography moduls](https://github.com/nlitsme/pyCryptoBenchmarking)
  - RC4 > AES >> Blowfish > 3DES.64 > CAST5 > 3DES.128 > 3DES.192

## Libraries
### C++
- [AWS-LC: A general-purpose cryptographic library maintained by the AWS Cryptography team for AWS and their customers. It іs based on code from the Google BoringSSL project and the OpenSSL project.](https://github.com/aws/aws-lc)
  - [BUILDING.md](https://github.com/aws/aws-lc/blob/main/BUILDING.md)
    - CMake, Perl, Go, NASM
    - No vcpkg
- [Botan: Crypto and TLS for Modern C++](https://github.com/randombit/botan)

### Rust
- [Rust Crypto](https://github.com/RustCrypto)
  - [nacl-compat: Pure Rust compatibility layer for NaCl-family libraries](https://github.com/RustCrypto/nacl-compat/tree/master?tab=readme-ov-file)

- [orion: Usable, easy and safe pure-Rust crypto](https://github.com/orion-rs/orion)

- [aws-lc-rs: A cryptographic library using AWS-LC for its cryptographic operations. The library strives to be API-compatible with the popular Rust library named ring.](https://github.com/aws/aws-lc-rs)
  - The crate name is `aws-lc-rs`
  - `cipher`: AES-128, AES-256
  - `aead`: AES-GCM, ChaCha20-Poly1305

  [Introducing AWS Libcrypto for Rust, an Open Source Cryptographic Library for Rust | AWS Open Source Blog](https://aws.amazon.com/cn/blogs/opensource/introducing-aws-libcrypto-for-rust-an-open-source-cryptographic-library-for-rust/)

- [ring: Safe, fast, small crypto using Rust](https://github.com/briansmith/ring)
  - [Slower than aws-lc-rs](https://github.com/aochagavia/rustls-bench-results#ring-vs-aws-lc)
  - [BUILDING.md](https://github.com/briansmith/ring/blob/main/BUILDING.md)
    - Perl, NASM
  - Used by rustls
  - [ring is a bad dependency; get rid of it - Issue #1396 - libp2p/rust-libp2p](https://github.com/libp2p/rust-libp2p/issues/1396)

- [tink-rust: Rust port of Tink cryptography library](https://github.com/project-oak/tink-rust)

- [DaGenix/rust-crypto: A (mostly) pure-Rust implementation of various cryptographic algorithms.](https://github.com/dagenix/rust-crypto) (discontinued)

- Serde
  - [serde-encrypt: 🔐 Encrypts all the Serialize.](https://github.com/laysakura/serde-encrypt)
  - [serde-encrypted-value: A crate which wraps Serde deserializers and decrypts values](https://github.com/palantir/serde-encrypted-value)

[Awesome Rust Cryptography | Showcase of notable cryptography libraries developed in Rust](https://cryptography.rs/)