# Authenticated Encryption
**Authenticated Encryption (AE)** and **Authenticated Encryption with Associated Data (AEAD)** are forms of encryption which simultaneously assure the confidentiality and authenticity of data.[^wiki]

$$AE(P,K)=(C,T)$$
where $P$ is the plaintext, $K$ is the key, $C$ is the ciphertext, $T$ is the authentication tag.

AEAD is a variant of AE that allows a recipient to check the integrity of both the encrypted and unencrypted information in a message.[^wiki]

$$AEAD(K,P,A)=(C,A,T)$$
- If $A$ is empty, $AEAD$ is AE.
- If $P$ is empty, $AEAD$ is MAC.

## Approaches
- Encrypt-then-MAC (EtM)  
  ![](https://upload.wikimedia.org/wikipedia/commons/b/b9/Authenticated_Encryption_EtM.png)
- Encrypt-and-MAC (E&M)  
  ![](https://upload.wikimedia.org/wikipedia/commons/a/a5/Authenticated_Encryption_EaM.png)
- MAC-then-Encrypt (MtE)  
  ![](https://upload.wikimedia.org/wikipedia/commons/a/ac/Authenticated_Encryption_MtE.png)

[^wiki]: [Authenticated encryption - Wikipedia](https://en.wikipedia.org/wiki/Authenticated_encryption)

## Libraries
Rust:
- [RustCrypto/AEADs: Authenticated Encryption with Associated Data Algorithms: high-level encryption ciphers](https://github.com/RustCrypto/AEADs)