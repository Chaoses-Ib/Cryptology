#import "@local/ib:0.1.0": *
#title[Ascon]
#a-badge[https://en.wikipedia.org/wiki/Ascon_(cipher)]
#footnote[Dobraunig, C., Eichlseder, M., Mendel, F., & Schläffer, M. (2021). Ascon v1.2: Lightweight Authenticated Encryption and Hashing. Journal of Cryptology, 34(3), 33. https://doi.org/10.1007/s00145-021-09398-9]
<dobraunigAsconV12Lightweight2021>
#footnote[Turan, Meltem Sönmez, Kerry A. McKay, Donghoon Chang, Jinkeon Kang, and John Kelsey. Ascon-Based Lightweight Cryptography Standards for Constrained Devices : Authenticated Encryption, Hash, and Extendable Output Functions. NIST SP 800-232. National Institute of Standards and Technology (U.S.), 2025. https://doi.org/10.6028/NIST.SP.800-232.]
<turanAsconbasedLightweightCryptography2025>

- #q[ascon]: #q[A cavity, in the form of a bag or tube, lined with choanocytes, that forms the structure of sponges]

- IV
  @turanAsconbasedLightweightCryptography2025
  - Ascon-AEAD128: 0x00001000808c0001
  - Ascon-Hash256: 0x0000080100cc0002
  - Ascon-XOF128: 0x0000080000cc0003
  - Ascon-CXOF128: 0x0000080000cc0004

- Ascon-AEAD128's binary size is \~1062B,
  \~40% of ChaCha-Poly1305, much lighter.

#a[NIST Finalizes 'Lightweight Cryptography' Standard to Protect Small Devices | NIST][https://www.nist.gov/news-events/news/2025/08/nist-finalizes-lightweight-cryptography-standard-protect-small-devices]
#a-badge[https://www.reddit.com/r/embedded/comments/1mpqf8g/nist_finalizes_lightweight_cryptography_standard/]

= Post-quantum security
#q[Since Ascon is targeting lightweight applications, we do not claim resistance against all possible quantum attacks.
However, Ascon provides enough robustness and agility to provide basic resistance against certain classes of attacks once the availability of appropriate quantum computer resources become evident.

Therefore, the Ascon suite provides an additional AEAD scheme Ascon-80pq.
The only difference between Ascon-80pq and Ascon-128 is the increased key length of 160 bits.
This increased key length provides additional protection against Grover’s algorithm for exhaustive key search.
The resulting security against Grover’s key search is about 80 bits.
Since all other tunable security parameters (the number of rounds of the permutations) are not changed, the security claim for Ascon-80pq against classical attacks stays the same as for Ascon-128, which is 128 bits (see Table 8).]
@dobraunigAsconV12Lightweight2021

#a[An ASCON Post-Quantum Future?. And, so, ASCON won the NIST... | by Prof Bill Buchanan OBE FRSE | ASecuritySite: When Bob Met Alice | Medium][https://medium.com/asecuritysite-when-bob-met-alice/an-ascon-post-quantum-future-b4ee8c0b1744]

#footnote[#a[Security of the Ascon Authenticated Encryption Mode in the Presence of Quantum Adversaries][https://eprint.iacr.org/2025/411]]
#footnote[#a[Ascon on FPGA: Post-Quantum Safe Authenticated Encryption with Replay Protection for IoT][https://www.mdpi.com/2079-9292/14/13/2668]]
#footnote[#a[Is Ascon and Ascon80pq secure? : r/cryptography][https://www.reddit.com/r/cryptography/comments/1i8gaql/is_ascon_and_ascon80pq_secure/]]

= Implementations
C:
- #a[ascon/ascon-c: Ascon - Lightweight Authenticated Encryption & Hashing][https://github.com/ascon/ascon-c]

Rust:
- #a[RustCrypto/sponges/ascon][https://github.com/RustCrypto/sponges/tree/master/ascon]
  - #a[RustCrypto/AEADs/ascon-aead128][https://github.com/RustCrypto/AEADs/tree/master/ascon-aead128]
    - v`0.1.0-rc.3` is broken without ```sh cargo update ascon --precise 0.5.0-rc.0```.
      #footnote[#a[ascon: refactor implementation by newpavlov - Pull Request \#122 - RustCrypto/sponges][https://github.com/RustCrypto/sponges/pull/122]]
- #a[sebastinas/ascon-aead: Rust implemention of Ascon][https://github.com/sebastinas/ascon-aead]
  (discontinued)
  - #a[Import `ascon-aead` by sebastinas - Pull Request \#514 - RustCrypto/AEADs][https://github.com/RustCrypto/AEADs/pull/514]
- #a[josephlbj/tinycrypto][https://github.com/josephlbj/tinycrypto]

#a[Code search results: `"0x00001000808c0001" language:Rust`][https://github.com/search?q=%220x00001000808c0001%22+language%3ARust&ref=opensearch&type=code]
