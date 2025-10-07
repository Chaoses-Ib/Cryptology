# Order-revealing Encryption
[→Order-preserving Encryption](../../Property/Order/README.md)

> Recently, Boneh et al. introduced the notion of ORE, which does not place any restrictions on the structure of the ciphertext space. An ORE scheme simply requires that there exists a publicly computable function that compares two ciphertexts. By relaxing the constraint on the ciphertext space, the Boneh et al. scheme is the first (non-interactive and stateless) scheme to achieve best-possible semantic security.[^lewiOrderRevealingEncryptionNew2016]

> Here the ordering is not preserved, but there exists a comparison function which reveals the order of any two ciphertexts. Instead of using < for comparison, this user defined comparison function is used. It is IND-COPA secure, but has a big performance penalty. Practical ORE schemes reveal information about the relative distance of the plain text.[^koppenwallnerSurveyPropertyPreservingDatabase2023]

## Algorithms
- Order-Revealing Encryption: New Constructions, Applications, and Lower Bounds[^lewiOrderRevealingEncryptionNew2016]
  - [The Enquo Project](https://enquo.org/)
    - [enquo/cretrit: Comparison-Revealing Encryption primitives](https://github.com/enquo/cretrit)

    [Brane Dump: PostgreSQL Encryption: The Available Options](https://www.hezmatt.org/~mpalmer/blog/2023/11/07/postgresql-encryption-options.html) ([Hacker News](https://news.ycombinator.com/item?id=38173141))


[^koppenwallnerSurveyPropertyPreservingDatabase2023]: Koppenwallner, J., & Schikuta, E. (2023). A Survey on Property-Preserving Database Encryption Techniques in the Cloud (No. arXiv:2312.12075). arXiv. https://doi.org/10.48550/arXiv.2312.12075
[^lewiOrderRevealingEncryptionNew2016]: Lewi, K., & Wu, D. J. (2016). Order-Revealing Encryption: New Constructions, Applications, and Lower Bounds. Proceedings of the 2016 ACM SIGSAC Conference on Computer and Communications Security, 1167–1178. https://doi.org/10.1145/2976749.2978376
