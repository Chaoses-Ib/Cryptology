#import "@local/ib:0.1.0": *
#title[Non-cryptographic Hash Functions]
#a-badge[https://en.wikipedia.org/wiki/Non-cryptographic_hash_function]

#a[SMhasher: Hash function quality and speed tests][https://github.com/rurban/smhasher#summary]
- #a[SMHasher3/results/README.md][https://gitlab.com/fwojcik/smhasher3/-/blob/main/results/README.md#passing-hashes]

= List
- #a[a5hash: Ultra fast, high-quality hash functions for hash-tables and hash-maps (non-cryptographic, header-only C/C++) + PRNG][https://github.com/avaneev/a5hash]

- #a[MuseAir: A portable hash function that heavily optimized for performance and quality, featuring novel, high-efficiency structures.][https://github.com/eternal-io/museair]
  - #q[If you're designing a persistent file format or communication protocol and want a simple checksum, you wouldn't want to use `wyhash` or `rapidhash`---they're _too easy_ to break for such uses!
    Providing _a fast hash function without these glaring issues_ was MuseAir's design motivation.]

- [→wyhash](wyhash.md)
  - rapidhash

- xxHash
