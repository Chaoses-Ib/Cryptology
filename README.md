# Cryptology
![](images/Components.png)

- [Authenticated Encryption](Authenticated%20Encryption.md)

## Random Number Generation
Random number generators (RNG):
- True Random Number Generators (TRNG)
- Pseudorandom Number Generators (PRNG)
  - Cryptographically Secure Pseudorandom Number Generator (CSPRNG)

## Symmetric cryptography
### Stream ciphers
#### Ciphers
- XOR
- RC4
- [Salsa20](Symmetric%20Cryptography/Stream%20Ciphers/Ciphers/Salsa20/README.md)
  - [ChaCha](Symmetric%20Cryptography/Stream%20Ciphers/Ciphers/Salsa20/ChaCha/README.md)
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

### Block ciphers
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

## Asymmetric cryptography
- Integer factorization
  - RSA
- Discrete logarithm
  - DH
- Lattice

## [Hash functions](Hash%20Functions/README.md)
- Universal Hashing

### Checksums
- Cyclic redundancy checks
  - CRC-16
  - CRC-32
  - CRC-64
- Internet checksum

### Non-cryptographic hash functions
- xxHash

### Unkeyed cryptographic hash functions
- [Message-Digest](Hash%20Functions/Message-Digest/README.md)
  - MD2
  - MD4
  - [MD5](Hash%20Functions/Message-Digest/MD5.md)
  - MD6
- Secure Hash Algorithm
  - SHA-0
  - SHA-1
  - SHA-2
    - SHA-224
    - SHA-256
    - SHA-384
    - SHA-512
  - SHA-3 (Keccak)

### Keyed cryptographic hash functions
- CBC-MAC
- HMAC
- MD6
- One-key MAC
  - OMAC1 (CMAC)
  - OMAC2

## Crytanalysis
### Attack models
Black-box models (no knowledge of cipher operation):
- Ciphertext-only attack (COA)  
  The attacker sees only C.
  - Brute force attack (exhaustive key search)
- Known-plaintext attack (KPA)  
  The attacker knows P and C.
- Chosen-plaintext attack (CPA)  
  The attacker can perform encryption for any P.

  - Indistinguishability under CPA (IND-CPA, semantic security)  
    Two identical plaintext must result in different ciphertexts. Accomplished by adding “random” bits each time you encrypt.
- Chosen-ciphertext attack (CCA)  
  The attacker can perform encryption and decryption.

Open key models (the attacker has some knowledge about the key for the cipher being attacked):
- Related-key attack  
  The attacker has access to ciphertext encrypted from the same plaintext using other (unknown) keys which are related to the target key in some mathematically defined way.[^attack-model-wiki]
- Known-key distinguishing attack and chosen-key distinguishing attack  
  The attacker can distinguish ciphertext from random along with the knowledge or ability to choose the key.[^attack-model-wiki]

Gray-box models (attacker has access to the implementation):
- Side-channel attack  
  The attacker measures something else about the cipher’s operation, such as timing or power consumption.
- Invasive attacks  
  The attacker can modify system.

[^attack-model-wiki]: [Attack model - Wikipedia](https://en.wikipedia.org/wiki/Attack_model)