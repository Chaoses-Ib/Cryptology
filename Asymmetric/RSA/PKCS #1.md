# PKCS #1
**PKCS #1** is the first of a family of standards called Public-Key Cryptography Standards (PKCS), published by RSA Laboratories. It provides the basic definitions of and recommendations for implementing the RSA algorithm for public-key cryptography. It defines the mathematical properties of public and private keys, primitive operations for encryption and signatures, secure cryptographic schemes, and related ASN.1 syntax representations.[^wiki]

## Primitives
The standard defines several basic primitives. The primitive operations provide the fundamental instructions for turning the raw mathematical formulas into computable algorithms.

- I2OSP (Integer to Octet String Primitive): Converts a (potentially very large) non-negative integer into a sequence of bytes (octet string).
- OS2IP (Octet String to Integer Primitive): Interprets a sequence of bytes as a non-negative integer
- RSAEP (RSA Encryption Primitive): Encrypts a message using a public key
- RSADP (RSA Decryption Primitive): Decrypts ciphertext using a private key
- RSASP1 (RSA Signature Primitive 1): Creates a signature over a message using a private key
- RSAVP1 (RSA Verification Primitive 1): Verifies a signature is for a message using a public key

[signature - What are I2OSP & OS2IP in RSA PKCS#1? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/37537/what-are-i2osp-os2ip-in-rsa-pkcs1)

[^wiki]: [PKCS 1 - Wikipedia](https://en.wikipedia.org/wiki/PKCS_1)