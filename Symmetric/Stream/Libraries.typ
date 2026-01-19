#import "@local/ib:0.1.0": *
#title[Stream Cipher Libraries]
= Rust
- #a[RustCrypto/traits/cipher][https://github.com/RustCrypto/traits/tree/master/cipher]
  #a-badge[https://docs.rs/cipher/]
  - Generate keystream in blocks, apply per block, copy remaining bytes to stack, apply as block and then copy back.
  - Block size may be large, not ideal for small data.
    - `salsa20`, `chacha20`: 64B
    - `rc4`: 1B

- #a[shadowsocks/shadowsocks-crypto: Shadowsocks Crypto][https://github.com/shadowsocks/shadowsocks-crypto]
  #a-badge[https://docs.rs/shadowsocks-crypto/]
  - ChaCha20
  - RC4

- #a[jedisct1/seekable-stream-cipher: Seekable stream cipher and encryption/decryption API for Rust and WebAssembly.][https://github.com/jedisct1/rust-seekable-stream-cipher]

- #a[ciph: Symmetric Cipher Layer][https://crates.io/crates/ciph]
