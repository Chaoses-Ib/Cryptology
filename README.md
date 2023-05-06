# Cryptology
![](images/Components.png)

- [Kerckhoffs's Principle](Kerckhoffs's%20Principle.md)
- [Security Level](Security%20Level.md)
- [Authenticated Encryption](Authenticated%20Encryption.md)

## [Random Number Generation](Random/README.md)
- [True Random Number Generators](Random/True/README.md)
- [Pseudorandom Number Generators](Random/Pseudo/README.md)
  - [Linear Congruential Generator](Random/Pseudo/Linear%20Congruential%20Generator.md)
  - [Linear Feedback Shift Registers](Random/Pseudo/Linear%20Feedback%20Shift%20Registers.md) ([Python](Random/Pseudo/Linear%20Feedback%20Shift%20Registers.ipynb))
  - Cryptographically Secure Pseudorandom Number Generator

## Symmetric Cryptography
### Stream Ciphers
#### Ciphers
- XOR
- RC4
- [Salsa20](Symmetric/Stream/Salsa20/README.md)
  - [ChaCha](Symmetric/Stream/Salsa20/ChaCha/README.md)
- Trivium

[eSTREAM portfolio](https://en.wikipedia.org/wiki/ESTREAM#eSTREAM_portfolio):
- Software
  - HC-128
  - Rabbit
  - Salsa20
  - SOSEMANUK
  
- Hardware
  - Grain
  - MICKEY
  - Trivium

### Block Ciphers
#### Ciphers
- AES (Rijndael)
- Blowfish
  - Twofish
  - Threefish
- DES
  - Triple DES
  - DES-X
- IDEA
- Rivert Ciphers
  - RC2
  - RC5
  - RC6
- SM4
- TEA
  - TEA
  - XTEA
  - XXTEA

## Asymmetric Cryptography
- Integer factorization
  - [RSA (Rivest–Shamir–Adleman)](Asymmetric/RSA/README.md)
    - [PKCS #1](Asymmetric/RSA/PKCS%20%231.md)
- Discrete logarithm
  - DH
- Lattice

## [Hash Functions](Hash/README.md)
- Universal Hashing

### Checksums
- Cyclic redundancy checks
  - CRC-16
  - CRC-32
  - CRC-64
- Internet checksum

### Non-cryptographic Hash Functions
- xxHash

### Unkeyed Cryptographic Hash Functions
- [Message-Digest](Hash/Message-Digest/README.md)
  - MD2
  - MD4
  - [MD5](Hash/Message-Digest/MD5.md)
  - MD6
- Secure Hash Algorithm
  - SHA-0
  - SHA-1
  - [SHA-2](Hash/Secure/SHA-2.md)
    - SHA-224
    - SHA-256
    - SHA-384
    - SHA-512
  - SHA-3 (Keccak)

### [Keyed Cryptographic Hash Functions](Hash/Keyed/README.md)
- CBC-MAC
- HMAC
- MD6
- One-key MAC
  - OMAC1 (CMAC)
  - OMAC2

## Cryptanalysis
- [Attack Models](Cryptanalysis/Attack%20Models.md)