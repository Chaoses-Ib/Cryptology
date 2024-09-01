# Homomorphic Encryption
[Wikipedia](https://en.wikipedia.org/wiki/Homomorphic_encryption)

> Homomorphic encryption is a form of encryption with an additional evaluation capability for computing over encrypted data without access to the secret key. The result of such a computation remains encrypted. Homomorphic encryption can be viewed as an extension of [public-key cryptography](https://en.wikipedia.org/wiki/Public-key_cryptography "Public-key cryptography"). *Homomorphic* refers to [homomorphism](https://en.wikipedia.org/wiki/Homomorphism "Homomorphism") in algebra: the encryption and decryption functions can be thought of as homomorphisms between plaintext and ciphertext spaces.
> 
> Homomorphic encryption includes multiple types of encryption schemes that can perform different classes of computations over encrypted data.^[\[3\]](https://en.wikipedia.org/wiki/Homomorphic_encryption#cite_note-ABG15-3)^ The computations are represented as either Boolean or arithmetic circuits. Some common types of homomorphic encryption are *partially* homomorphic, *somewhat* homomorphic, *leveled* *fully* homomorphic, and *fully* homomorphic encryption:
> 
> - *Partially homomorphic encryption* encompasses schemes that support the evaluation of circuits consisting of only one type of gate, e.g., addition or multiplication.
> - *Somewhat homomorphic encryption* schemes can evaluate two types of gates, but only for a subset of circuits.
> - *Leveled fully homomorphic encryption* supports the evaluation of arbitrary circuits composed of multiple types of gates of bounded (pre-determined) depth.
> - *Fully homomorphic encryption* (FHE) allows the evaluation of arbitrary circuits composed of multiple types of gates of unbounded depth and is the strongest notion of homomorphic encryption.
> 
> For the majority of homomorphic encryption schemes, the multiplicative depth of circuits is the main practical limitation in performing computations over encrypted data. Homomorphic encryption schemes are inherently [malleable](https://en.wikipedia.org/wiki/Malleability_(cryptography) "Malleability (cryptography)"). In terms of malleability, homomorphic encryption schemes have weaker security properties than non-homomorphic schemes.

[Types of Homomorphic Encryption - IEEE Digital Privacy](https://digitalprivacy.ieee.org/publications/topics/types-of-homomorphic-encryption)

对加密的数据直接进行运算，不需要解密。
- 为什么要对加密的数据进行运算，而不是对明文？

  一方不希望交出明文数据，另一方不希望或不能够让运算由前者进行。于是只能让前者交出加密数据，后者运算后交回。

- 客户端加密，服务端运算的场景很好理解，但服务端加密，客户端运算的场景也存在吗？

  似乎基本只能当计数器用，比如客户端登录后服务端返回个加密后的初值，然后客户端运算 +1，后面每次请求时带上，调用成功时再 +1，服务端每次检查。比直接 +1 也就是更复杂了而已。

[A 6-minute introduction to homomorphic encryption](https://www.zama.ai/introduction-to-homomorphic-encryption)

[Homomorphic Encryption Use Cases - IEEE Digital Privacy](https://digitalprivacy.ieee.org/publications/topics/homomorphic-encryption-use-cases)

## Fully homomorphic encryption
- BFV
  - Swift: [Swift.org - Announcing Swift Homomorphic Encryption](https://www.swift.org/blog/announcing-swift-homomorphic-encryption/) ([Hacker News](https://news.ycombinator.com/item?id=41111129))
- BGV
- CKKS
- TFHE
  - [Zama](https://www.zama.ai/) ([GitHub](https://github.com/zama-ai))

## Obfuscation
- [Homomorphic Indistinguishability Obfuscation and its Applications](https://eprint.iacr.org/2023/925)

  似乎确实有点用，如果不可区分混淆实现的话，就相当于不需要暴露程序也可以让别人执行，加上同态加密，就相当于程序和数据都不需要暴露就可以让别人执行，完全安全，虽然这有些不切实际。

[Can homomorphic encryption offer program integrity and program obfuscation? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/61037/can-homomorphic-encryption-offer-program-integrity-and-program-obfuscation)
- Zero-knowledge proofs

[Homomorphic encryption and program obfuscation - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/106001/homomorphic-encryption-and-program-obfuscation)