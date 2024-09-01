# Functional Encryption
[Wikipedia](https://en.wikipedia.org/wiki/Functional_encryption)

> Functional encryption (FE) is a generalization of public-key encryption in which possessing a secret key allows one to learn a function of what the ciphertext is encrypting.

## Functional encryption vs Homomorphic encryption
[Forget Homomorphic Encryption, here comes Functional Encryption : r/netsec](https://www.reddit.com/r/netsec/comments/e1xy0c/forget_homomorphic_encryption_here_comes/)
> Cryptographer here:
> - FHE has ONE decryption key, anyone can compute any function on the ciphertext but can never see the plain results without that key, and with that key they can see everything.
> - FE does not allow anyone to compute any function on ciphertexts, but instead the key generation authority has the ability to create multiple "decryption" keys of different capabilities and hand them to different machines.
> 
> Since there are multiple decryption keys, we have to talk about what a decryption key can actually do instead of just "it decrypts everything!": A decryption key allows the holder to learn some information about the underlying plaintext depending on whether or not some condition holds. The information and the condition are the "functions" in "Functional" encryption.
> 
> Example: The decryption key takes a ciphertext that encrypts an email, and if the plaintext contains "Boner Pills", then output the Sender of the email, otherwise the decryption key does nothing. Note that the rest of the contents of the email are always encrypted no matter the Boner Pills.
> 
> Last, I have a few slight comments about the blog post: people usually cite Fuzzy IBE or Attribute Based Encryption as the genesis of FE (even though it was rightfully defined later), multiple ciphertexts requires Multi-input FE, and lastly general-purpose FE is (as the author rightfully pointed out) terribly, terribly hard.

[functional encryption over homomorphic encryption - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/85568/functional-encryption-over-homomorphic-encryption)
》 The main difference between FE and HE is that: In HE, for the decryption you need to interact with the owner of the secret-key, but in FE everybody who has access to the ciphertext and functional key can decrypt the massage. While HE can efficiently support different kinds of computation over encrypted data, FE supports limited class of functionality (in theory it still can support general functionality). This limited class includes: inner-product (which might be what you called weighted sum) and quadratic functionality.

[Functional Cryptography: The Alternative to Homomorphic Encryption for Performing Calculations on Encrypted Data](https://telefonicatech.com/en/blog/functional-cryptography-alternative-homomorphic-encryption-performing-calculations-encrypted-data)
> In 2011, D. Boneh, A. Sahai and B. Waters proposed to go beyond conventional asymmetric encryption with their [functional cryptography](https://media.telefonicatech.com/telefonicatech/uploads/2021/1/131455_543.pdf): a new approach to public-key encryption in which **different decryption keys allow access to functions on the data in clear**. In other words, **functional cryptography makes it possible to deliberately leak information about the encrypted data to specific users.**
> 
> If you are familiar with the concept of the fully homomorphic encryption (FHE), you may have thought of it when reading about functional encryption. The difference between the two is crucial: fully homomorphic encryption (FHE) performs operations on the encrypted data and the result is still encrypted. To access the result of the computation on the encrypted data, decryption is needed, which can be inconvenient in certain use cases.

Alwen et al., “On the Relationship between Functional Encryption, Obfuscation, and Fully Homomorphic Encryption.”

[random oracle model - Homomorphic & Functional encryption: Mapping unencrypted outputs to encrypted outputs using existing data - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/60813/homomorphic-functional-encryption-mapping-unencrypted-outputs-to-encrypted-ou)

## Homomorphic functional encryption
- [A New Symmetric Homomorphic Functional Encryption over a Hidden Ring for Polynomial Public Key Encapsulations](https://arxiv.org/abs/2301.11995)