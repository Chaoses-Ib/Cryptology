# [Cryptology](Cryptology.md)
Type | Function
--- | ---
[RNG](#random-number-generation) | $S \rightarrow R$
[Hash](#hash-functions) | $P \rightarrow H$ or $P \xrightarrow{K} H$
[Symmetric](#symmetric-cryptography) | $P \xrightarrow{K} C \xrightarrow{K} P$
[Asymmetric](#asymmetric-cryptography) | $P \xrightarrow{K_e} C \xrightarrow{K_d} P$
[Functional](#functional-encryption) | $P \xrightarrow{K} C \xrightarrow{K_{f(x)}} f(P)$
[Homomorphic](#homomorphic-encryption) | $P \xrightarrow{K} C \xrightarrow{f} f(C) \xrightarrow{K} f(P)$
[Protocol](#cryptographic-protocols) | $P,S \xrightarrow{?} C,H \xrightarrow{?} P \ \text{or}\  f(P)\ \text{or}\ C$
[Cryptanalysis](#cryptanalysis) | $C \rightarrow P\ $ or $\ C,P \rightarrow K$

## [Random Number Generation](Random/README.md)
- [True Random Number Generators](Random/True/README.md)
- [Pseudorandom Number Generators](Random/Pseudo/README.md)
  - [Linear Congruential Generator](Random/Pseudo/Linear%20Congruential%20Generator.md)
  - [Linear Feedback Shift Registers](Random/Pseudo/Linear%20Feedback%20Shift%20Registers.md) ([Python](Random/Pseudo/Linear%20Feedback%20Shift%20Registers.ipynb))
  - Cryptographically Secure Pseudorandom Number Generator

## [Hash Functions](Hash/README.md)
- Universal Hashing

### Checksums
- Cyclic redundancy checks
  - CRC-16
  - CRC-32
  - CRC-64
- Internet checksum

### [Non-cryptographic Hash Functions](Hash/Non-cryptographic/README.md)
- [wyhash](Hash/Non-cryptographic/wyhash.md)
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
- [Key Encapsulation Mechanism](Asymmetric/KEM.md)

## [Functional Encryption](Functional/README.md)

## [Homomorphic Encryption](Homomorphic/README.md)

## [Cryptographic Protocols](Protocols/README.md)
- [Authenticated Encryption](Protocols/Authenticated/README.md)
- [Internet Protocol Security (IPsec)](Protocols/IP/README.md)
- [Transport Layer Security (TLS)](Protocols/Transport/README.md)
- [Messaging Layer Security (MLS)](Protocols/Messaging/README.md)
- [Man-in-the-Middle Attack](Protocols/MITM.md)

## Cryptanalysis
- [Kerckhoffs's Principle](Cryptanalysis/Kerckhoffs.md)
- [Security Level](Cryptanalysis/Levels.md)
- [Attack Models](Cryptanalysis/Attack%20Models.md)