#import "@local/ib:0.1.0": *
#title[ChaCha-Poly1305]
#a-badge[https://en.wikipedia.org/wiki/ChaCha20-Poly1305]

#a[RFC 8439: ChaCha20 and Poly1305 for IETF Protocols][https://datatracker.ietf.org/doc/html/rfc8439]

#q[
ChaCha20Poly1305 is notable for being simple and fast when implemented in pure software.
The underlying ChaCha20 stream cipher uses a simple combination of add, rotate, and XOR instructions (a.k.a. "ARX"),
and the Poly1305 hash function is likewise extremely simple.

While it hasn't received approval from certain standards bodies (i.e. NIST) the algorithm is widely used and deployed.
Notably it's mandatory to implement in the Transport Layer Security (TLS) protocol.
The underlying ChaCha20 cipher is also widely used as a cryptographically secure random number generator,
including internal use by the Rust standard library.
]

- 16-byte auth tag

= Nonce
- #a[Daence: Deterministic Authenticated Encryption with no noNCEnse][https://github.com/riastradh/daence]

= Libraries
Rust:
- #a[RustCrypto/AEADs/chacha20poly1305][https://github.com/RustCrypto/AEADs/tree/master/chacha20poly1305]
  - Custom rounds
  - Binary size (`Os` by default):
    - `sse2` + `soft` + `&[u8]`: 2756B
    - `sse2` + `soft` + `&[u8]` + `Oz`: 2860B
    - `soft` + `&[u8]` + `Oz`: 3031B
    - `soft` + `[u8; 80]`: 3308B
      - `quarter_round()` and `run_rounds()` are inlined (8 $times$ 2 times).
    - 20/8 + `soft` + `&[u8]`: 3540B
    - `avx2` + `&[u8]`: 9990B
- #a[orion: Usable, easy and safe pure-Rust crypto][https://github.com/orion-rs/orion]
- aws-lc-rs
- #a[Graviola: High quality, fast and easy to build cryptography for Rust][https://github.com/ctz/graviola]
- #a[typed-io/cryptoxide: crypto primitives in pure rust - wasm compatible - maintained fork of rust-crypto][https://github.com/typed-io/cryptoxide]
- #a[shadowsocks/crypto2: The fastest cryptographic library in the galaxy][https://github.com/shadowsocks/crypto2]
  (discontinued)
