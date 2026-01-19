#import "@local/ib:0.1.0": *
#title[ChaCha]
#md(`
[The design of Chacha20](https://loup-vaillant.fr/tutorials/chacha20-design) ([Hacker News](https://news.ycombinator.com/item?id=13364424))

[Do the ChaCha: better mobile performance with cryptography](https://blog.cloudflare.com/do-the-chacha-better-mobile-performance-with-cryptography/)

## Implementations
Rust:
- [orion: Usable, easy and safe pure-Rust crypto](https://github.com/orion-rs/orion)

Python:
- [Pure Python Salsa and ChaCha](https://github.com/oconnor663/pure_python_salsa_chacha)
- [pts/chacha20: Pure Python 2 and Python 3 implementations of the ChaCha20 stream cipher](https://github.com/pts/chacha20)

易语言：
- [ChaCha20](ChaCha20.e)

## ChaCha20-Poly1305
[RFC 8439: ChaCha20 and Poly1305 for IETF Protocols](https://datatracker.ietf.org/doc/html/rfc8439)

> ChaCha20Poly1305 is notable for being simple and fast when implemented in pure software. The underlying ChaCha20 stream cipher uses a simple combination of add, rotate, and XOR instructions (a.k.a. "ARX"), and the Poly1305 hash function is likewise extremely simple.
> 
> While it hasn't received approval from certain standards bodies (i.e. NIST) the algorithm is widely used and deployed. Notably it's mandatory to implement in the Transport Layer Security (TLS) protocol. The underlying ChaCha20 cipher is also widely used as a cryptographically secure random number generator, including internal use by the Rust standard library.

- 16-byte auth tag

Rust:
- [RustCrypto/AEADs/chacha20poly1305](https://github.com/RustCrypto/AEADs/tree/master/chacha20poly1305)
- [orion: Usable, easy and safe pure-Rust crypto](https://github.com/orion-rs/orion)
`)
- aws-lc-rs