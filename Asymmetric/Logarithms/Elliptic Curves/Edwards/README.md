# Edwards-curve Digital Signature Algorithm (EdDSA)
[Wikipedia](https://en.wikipedia.org/wiki/EdDSA)

[Edwards curve - Wikipedia](https://en.wikipedia.org/wiki/Edwards_curve)

[Why does Ed25519 use a twisted Edwards curve rather than a regular Edwards curve? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/107929/why-does-ed25519-use-a-twisted-edwards-curve-rather-than-a-regular-edwards-curve)

[Safe curves for elliptic cryptography](https://www.cryptosys.net/pki/manpki/pki_eccsafecurves.html)

## Ed25519
Ed25519 is the EdDSA signature scheme using SHA-512 (SHA-2) and Curve25519.

[Curve25519 - Wikipedia](https://en.wikipedia.org/wiki/Curve25519)

256 bits key size, 128 bits security level.

Rust:
- [rust-ed25519-compact: Small, wasm-friendly, zero-dependencies Ed25519 and X25519 implementation for Rust.](https://github.com/jedisct1/rust-ed25519-compact)

C++:
- [orlp/ed25519: Portable C implementation of Ed25519, a high-speed high-security public-key signature system.](https://github.com/orlp/ed25519)
  - ~4300 lines of code excluding tests
- [DavyLandman/compact25519: A compact portable X25519 + Ed25519 implementation](https://github.com/DavyLandman/compact25519)
  - ~1500 lines of code excluding tests