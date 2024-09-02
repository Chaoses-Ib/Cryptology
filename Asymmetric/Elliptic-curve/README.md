# Elliptic-curve Cryptography
[Wikipedia](https://en.wikipedia.org/wiki/Elliptic-curve_cryptography)

> The base assumption is that finding the [discrete logarithm](https://en.wikipedia.org/wiki/Discrete_logarithm "Discrete logarithm") of a random elliptic curve element with respect to a publicly known base point is infeasible (the [computational Diffie--Hellman assumption](https://en.wikipedia.org/wiki/Computational_Diffie%E2%80%93Hellman_assumption "Computational Diffie--Hellman assumption")): this is the "elliptic curve discrete logarithm problem" (ECDLP). The security of elliptic curve cryptography depends on the ability to compute a [point multiplication](https://en.wikipedia.org/wiki/Elliptic_curve_point_multiplication "Elliptic curve point multiplication") and the inability to compute the multiplicand given the original point and product point. The size of the elliptic curve, measured by the total number of discrete integer pairs satisfying the curve equation, determines the difficulty of the problem.

> The primary benefit promised by elliptic curve cryptography over alternatives such as RSA is a smaller key size, reducing storage and transmission requirements. For example, a 256-bit elliptic curve public key should provide comparable security to a 3072-bit RSA public key.

> On the other side of the performance spectrum, ECC is the most attractive public-key algorithm for lightweight applications such as RFID tags. Highly compact ECC engines are possible which need as little as 10,000 gate equivalences and run at a speed of several tens of milliseconds. Even though ECC engines are much larger than implementations of symmetric ciphers such as 3DES, they are considerably smaller than RSA implementations.[^understand]

## Libraries
[RustCrypto/elliptic-curves: Collection of pure Rust elliptic curve implementations: NIST P-224, P-256, P-384, P-521, secp256k1, SM2](https://github.com/RustCrypto/elliptic-curves)
- [Missing elliptic curves - Issue #114 - RustCrypto/elliptic-curves](https://github.com/RustCrypto/elliptic-curves/issues/114)


[^understand]: Understanding Cryptography