# Security Level
## Information-theoretic security
A cryptosystem is considered to have **information-theoretic security (unconditional security)** if the system is secure against adversaries with unlimited computing resources and time.[^wiki]

One-time pad is the only cryptosystem having unconditional security.

## Computationally secure
In contrast, a system which depends on the computational cost of cryptanalysis to be secure (and thus can be broken by an attack with unlimited computation) is called **computationally secure (conditionally secure)**.[^wiki]

## Security level
US NIST SP-800-57 Recommendation for Key Management[^level]:

Security bits | Symmetric key | Finite field/Discrete logarithm | Integer factoriztion | Elliptic curve
--- | --- | --- | --- | --- 
<span style="color:red">80</span> | 2TDEA | L=1024, N=160 | k=1024 | f=160-223
<span style="color:brown">112</span> | 3TDEA | L=2048, N=224 | k=2048 | f=224-255
128 | AES | L=3072, N=256 | k=3072 | f=256-383
192 | AES | L=7680, N=384 | k=7680 | f=384-511
256 | AES | L=15360, N=511 | k=15360 | f=512+

[Key size - Wikipedia](https://en.wikipedia.org/wiki/Key_size)

[Keylength - Cryptographic Key Length Recommendation](https://www.keylength.com/)

[Your attack cost estimates are probably too low](https://www.chosenplaintext.ca/2015/12/03/attack-cost-too-low.html)


[^wiki]: [Information-theoretic security - Wikipedia](https://en.wikipedia.org/wiki/Information-theoretic_security)
[^level]: [Security level - Wikipedia](https://en.wikipedia.org/wiki/Security_level)