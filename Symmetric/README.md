# Symmetric Cryptography
[Wikipedia](https://en.wikipedia.org/wiki/Symmetric-key_algorithm)

## Performance
[→Cryptology](../Cryptology.md#performance)

- 2017-01 [How does ChaCha20 compare to the established AES standard? Is it stronger? weake... | Hacker News](https://news.ycombinator.com/item?id=13364762)

  > AES is usually faster on modern systems because it's implemented directly in silicon. Salsa is usually the fastest pure-software option. Both are so fast that the speed difference is not particularly important, but most systems will prefer AES when hardware support is present.

- 2022-07 [encryption - XChaCha20 vs AES 128 security and speed - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/101050/xchacha20-vs-aes-128-security-and-speed)

  > AES and derivatives will [typically](https://github.com/jedisct1/rust-aegis#benchmarks) be faster due to [hardware support](https://en.wikipedia.org/wiki/AES_instruction_set). However, without hardware support, ChaCha20 should be faster, which is why it's been [used](https://blog.cloudflare.com/do-the-chacha-better-mobile-performance-with-cryptography/) on mobile devices. If you can't guarantee hardware support, ChaCha20 makes a lot more sense, and it's certainly not a slow algorithm.