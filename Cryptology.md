# Cryptology
## Libraries
C++:
- [AWS-LC: A general-purpose cryptographic library maintained by the AWS Cryptography team for AWS and their customers. It іs based on code from the Google BoringSSL project and the OpenSSL project.](https://github.com/aws/aws-lc)
  - [BUILDING.md](https://github.com/aws/aws-lc/blob/main/BUILDING.md)
    - CMake, Perl, Go, NASM
    - No vcpkg
- [Botan: Crypto and TLS for Modern C++](https://github.com/randombit/botan)

Rust:
- [Rust Crypto](https://github.com/RustCrypto)

- [aws-lc-rs: A cryptographic library using AWS-LC for its cryptographic operations. The library strives to be API-compatible with the popular Rust library named ring.](https://github.com/aws/aws-lc-rs)

  [Introducing AWS Libcrypto for Rust, an Open Source Cryptographic Library for Rust | AWS Open Source Blog](https://aws.amazon.com/cn/blogs/opensource/introducing-aws-libcrypto-for-rust-an-open-source-cryptographic-library-for-rust/)

- [ring: Safe, fast, small crypto using Rust](https://github.com/briansmith/ring)
  - [Slower than aws-lc-rs](https://github.com/aochagavia/rustls-bench-results#ring-vs-aws-lc)
  - [BUILDING.md](https://github.com/briansmith/ring/blob/main/BUILDING.md)
    - Perl, NASM
  - Used by rustls
  - [ring is a bad dependency; get rid of it - Issue #1396 - libp2p/rust-libp2p](https://github.com/libp2p/rust-libp2p/issues/1396)