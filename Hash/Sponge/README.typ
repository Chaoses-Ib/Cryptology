#import "@local/ib:0.1.0": *
#title[Sponge Functions]
#a-badge[https://en.wikipedia.org/wiki/Sponge_function]
#footnote[Bertoni, G., Daemen, J., Peeters, M., & Van Assche, G. (2007). Sponge functions. ECRYPT Hash Workshop, 2007(9). https://csrc.nist.rip/groups/ST/hash/documents/JoanDaemen.pdf]
<bertoniSpongeFunctions2007>

#q[A good cryptographic hash function should behave like a random oracle: it should not have weaknesses that a random oracle does not have.
Due to the existence of inner collisions, iterated hash functions can never satisfy this ideal.
We propose a construction with a finite state called a _sponge_ and show that a random sponge can only be distinguished from a random oracle due to inner collisions.
We evaluate the strength of random sponges by computing the probability of success for a number of attacks as a function of their workload and show that these results shed a new light on the classical Merkle-Damga ̊rd construction.
We propose to use random sponges of given parameters as a reference for specifying security claims for hash functions, but also MAC functions and some types of stream ciphers.
The main goal of sponge functions is for designers to be able to formulate a compact security claim.]
@bertoniSpongeFunctions2007

#q[A sponge function is a generalization of both hash functions, which have a fixed output length, and stream ciphers, which have a fixed input length.
It operates on a finite state by iteratively applying the inner permutation to it, interleaved with the entry of input or the retrieval of output.]
#footnote[#a[Keccak Team][https://keccak.team/sponge_duplex.html]]

#q[
They can be used to model or implement many cryptographic primitives, including cryptographic hashes, message authentication codes, mask generation functions, stream ciphers, pseudo-random number generators, and authenticated encryption.]

#a[hash - What is the sponge construction in simple terms? - Cryptography Stack Exchange][https://crypto.stackexchange.com/questions/83258/what-is-the-sponge-construction-in-simple-terms]

= Implementations
Rust:
- #a[RustCrypto/sponges: Collection of sponge functions written in pure Rust][https://github.com/RustCrypto/sponges]
