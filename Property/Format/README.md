# Format-preserving Encryption
[Wikipedia](https://en.wikipedia.org/wiki/Format-preserving_encryption)

> Format-preserving encryption (FPE), refers to encrypting in such a way that the output (the ciphertext) is in the same format as the input (the plaintext). The meaning of "format" varies. Typically only finite sets of characters are used; numeric, alphabetic or alphanumeric.

- Or: arbitary base and length block encryption.
- Most of the constructions are based on block ciphers, aren't stream ciphers easier to be used?

## Algorithms
- NIST
  - [FF1](#ff1)
  - FF2

- FAST: Secure and High Performance Format-Preserving Encryption and Tokenization[^durakFASTSecureHigh2021]
  - Zig: [zig-fast](https://github.com/jedisct1/zig-fast)

### FF1
- Botan
  - Rust: [`botan::FPE`](https://docs.rs/botan/latest/botan/struct.FPE.html)
- Rust
  - [str4d/fpe](https://github.com/str4d/fpe) (`fpe`)


[^durakFASTSecureHigh2021]: Durak, F. B., Horst, H., Horst, M., & Vaudenay, S. (2021). FAST: Secure and High Performance Format-Preserving Encryption and Tokenization. In M. Tibouchi & H. Wang (Eds.), Advances in Cryptology – ASIACRYPT 2021 (pp. 465–489). Springer International Publishing. https://doi.org/10.1007/978-3-030-92078-4_16
