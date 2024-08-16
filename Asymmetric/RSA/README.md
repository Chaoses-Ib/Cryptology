# Rivest–Shamir–Adleman
Given the **public key** $(n,e)=k_{pub}$ and the plaintext $x$, the encryption function is
$$y=e_{k_{pub}}(x)\equiv x^e \pmod n$$
Given the **private key (decryption exponent, private exponent)** $d=k_{pr}$ and the ciphertext $y$, the decryption function is
$$x=d_{k_{pr}}(y)\equiv y^d \pmod n$$
where $x,y\in Z_n$, $e$ is the **encryption exponent (public exponent)**.[^understand]

## Key generation
1. Choose two large primes $p$ and $q$
2. Compute $n=p\cdot q$
3. Compute $\phi(n)=(p-1)(q-1)$
4. Select the public exponent $e\in \{1,2,\cdots,\phi(n)-1\}$ such that
   $$gcd(e,\phi(n))=1$$
5. Compute the private key $d$ such that
   $$d\cdot e \equiv 1 \pmod{\phi(n)}$$
   by extended Euclidean algorithm:
   $$gcd(\phi(n),e)=s\cdot \phi(n) + t\cdot e=1$$
   Because the parameter $t$ computed by the extended Euclidean algorithm is the inverse of $e$,
   $$d\equiv t \pmod{\phi(n)}$$
   Note that the coefficient $s$ is not required for RSA.

Example:
1. Choose $p=3$ and $q=11$
2. $n=p\cdot q=33$
3. $\phi(n)=(p-1)(q-1)=20$
4. Choose $e=3$
5. $d\equiv e^{-1}\equiv 7 \pmod{20}$

Encryption:
1. Plaintext $x=4$, public key $(n,e)=(33,3)$
2. $x^e=4^3\equiv 31 \pmod{n=33}$

Decryption:
1. Private key $d=7$, $n=33$
2. $y^d=31^d\equiv 4 \pmod{n=33}$

In practice, the modulus $n$ should be at least 1024 bit long, which results in a bit length for $p$ and $q$ of 512.[^understand]

There is no known weakness for any short or long public exponent $e$ for RSA, as long as the public exponent is "correct" (i.e. relatively prime to $p-1$ for all primes _p_ which divide the modulus). However, one can find a few reasons why a big public exponent shall be avoided:[^e-length]
- Small public exponents promote efficiency (for public-key operations).
- There are security issues about having a small _private_ exponent; a key-recovery attack has been described when the private exponent length is no more than 29% of the public exponent length. When you want to force the private exponent to be short (e.g. to speed up private key operations), you more or less have to use a big public exponent (as big as the modulus); requiring the public exponent to be short may then be viewed as a kind of indirect countermeasure.
- Some widely deployed RSA implementations choke on big RSA public exponents. e.g. the RSA code in Windows (CryptoAPI, used by Internet Explorer for HTTPS) insists on encoding the public exponent within a single 32-bit word; it cannot process a public key with a bigger public exponent.

The public exponent $e$ is often selected as 65537 or 3.

See also [security level](../../Security%20Level.md).

### Factoring
[RSA Factoring Challenge - Wikipedia](https://en.wikipedia.org/wiki/RSA_Factoring_Challenge)

- 2010 [1024-bit RSA encryption cracked by carefully starving CPU of electricity](https://www.engadget.com/2010-03-09-1024-bit-rsa-encryption-cracked-by-carefully-starving-cpu-of-ele.html)

- 2015 [Factoring as a Service](https://eprint.iacr.org/2015/1000.pdf)
  
  > We optimize the CADO-NFS and Msieve implementations of the
number field sieve for use on the Amazon Elastic Compute Cloud platform,
allowing a non-expert to factor 512-bit RSA public keys in under four
hours for $75.
  
  > We go on to survey the RSA key sizes used in popular
protocols, finding hundreds or thousands of deployed 512-bit RSA keys
in DNSSEC, HTTPS, IMAP, POP3, SMTP, DKIM, SSH, and PGP.

  [512-bit RSA Keys Cracked in Four Hours for only $75 - SoylentNews](https://soylentnews.org/article.pl?sid=15/10/21/0029236)

- 2016 [Default RSA key bitlength should be 3072 - Issue #2080 - certbot/certbot](https://github.com/certbot/certbot/issues/2080)

- 2020 [2048 Bit RSA Keys \[The Call of the Open Sidewalk\]](https://articles.59.ca/doku.php?id=pgpfan:2048)

  > Currently (2020) the largest RSA key ever actually broken is 829 bits long. Using a random cost off the net for AWS compute capacity the cost works out to around one million USD.

## Proof of correctness
[^understand]

$${(x^e)}^d\equiv x \pmod n$$

Proof:

Because $d\cdot e\equiv 1\pmod {\phi(n)}$,

$$d\cdot e = 1+t\cdot \phi(n)$$
where $t\in Z$.

$$(x^e)^d=x^{de}=x^{1+t\cdot \phi(n)}=(x^{\phi(n)})^t \cdot x \pmod n$$

If $gcd(x,n)=1$, then $x^{\phi(n)}\equiv 1 \pmod n$,

$$(x^{\phi(n)})^t \cdot x \equiv x \pmod n$$

If $gcd(x,n)=gcd(x,p\cdot q)\ne 1$, since $p$ and $q$ are primes,
$$x=r\cdot p \quad\text{or}\quad x=s\cdot q$$
Without loss of generality, we assume $x=r\cdot p$, then $gcd(x,q)=1$, and

$$x^{\phi(q)}\equiv 1 \pmod q$$

$$(x^{\phi(n)})^t = {(x^{(q-1)(p-1)})}^t = {({(x^{\phi(q)})}^t)}^{p-1} \equiv 1 \pmod q$$

Therefore

$$(x^{\phi(n)})^t = 1+u\cdot q \pmod n$$

$$\begin{align}
x\cdot (x^{\phi(n)})^t
&= x+x\cdot u\cdot q \\
&= x+(r\cdot p)\cdot u\cdot q \\
&= x+r\cdot u\cdot (p\cdot q) \\
&= x+r\cdot u\cdot n
\end{align}$$

$$(x^{\phi(n)})^t \cdot x \equiv x \pmod n$$


[^understand]: Understanding Cryptography
[^e-length]: [cryptography - Should RSA public exponent be only in {3, 5, 17, 257 or 65537} due to security considerations? - Information Security Stack Exchange](https://security.stackexchange.com/questions/2335/should-rsa-public-exponent-be-only-in-3-5-17-257-or-65537-due-to-security-c)