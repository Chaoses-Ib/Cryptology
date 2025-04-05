# Unkeyed Cryptographic Hash Functions
[Wikipedia](https://en.wikipedia.org/wiki/Cryptographic_hash_function)

[Fast hashing: It's not that simple](https://kerkour.com/fast-hashing-algorithms)

Applications:
- File or data identifier
  - VCS
  - P2P
  - URN
  - Content-addressable storage (CAS)

## Hash functions based on block ciphers
> A standard block cipher such as AES can be used in place of these custom block ciphers; that might be useful when an embedded system needs to implement both encryption and hashing with minimal code size or hardware area. However, that approach can have costs in efficiency and security. The ciphers in hash functions are built for hashing: they use large keys and blocks, can efficiently change keys every block, and have been designed and vetted for resistance to related-key attacks. General-purpose ciphers tend to have different design goals. In particular, AES has key and block sizes that make it nontrivial to use to generate long hash values; AES encryption becomes less efficient when the key changes each block; and related-key attacks make it potentially less secure for use in a hash function than for encryption.

## Implementations
Rust:
- [RustCrypto/traits/digest](https://github.com/RustCrypto/traits/tree/master/digest)
- [RustCrypto/hashes: Collection of cryptographic hash functions written in pure Rust](https://github.com/RustCrypto/hashes)

Python:
- [hashlib — Secure hashes and message digests - Python3 Docs](https://docs.python.org/3/library/hashlib.html)

  [File hashing](https://docs.python.org/3/library/hashlib.html#file-hashing) (Python 3.11)
  
  [Performance test of MD5, SHA1, SHA256 and SHA512](http://atodorov.org/blog/2013/02/05/performance-test-md5-sha1-sha256-sha512/)

  [Sami Lehtinen - Python hash function performance comparison](https://www.sami-lehtinen.net/blog/python-hash-function-performance-comparison)
