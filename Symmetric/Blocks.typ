#import "@local/ib:0.1.0": *
#title[Blocks]
Stream ciphers encrypt bit-by-bit, independent of the actual plaintext. \
Block ciphers instead encrypt block-by-block, dependent of the plaintext.

Both ciphers need nonce / IV / mode of operation once the plaintext is larger than their unit size.
- Many modes of operation for block ciphers are not applicable to stream ciphers as their unit size is just 1 bit.
- Because stream ciphers need a non-short nonce, it's not great for short messages that are $lt.eq$ block size.

#q[
A block cipher is just a keyed
#a[pseudorandom permutation][http://en.wikipedia.org/wiki/Pseudorandom_permutation]
family on the set ${0,1}^n$ of $n$-bit blocks. \
A stream cipher — in the most general sense of the term — is also a keyed invertible pseudorandom function family, but on the set ${0,1}^ast$ of arbitrary-length bitstrings rather than on blocks of limited length.

Stream ciphers are much more immediately useful than block ciphers: you can use them directly to encrypt messages of any length. However, it turns out that they're also much _less_ useful as building blocks for other cryptographic tools: if you have a block cipher, you can easily
#a[turn it into a stream cipher][http://en.wikipedia.org/wiki/Block_cipher_modes_of_operation],
whereas turning an arbitrary stream cipher into a block cipher is
#a[difficult if not impossible][https://crypto.stackexchange.com/questions/712/converting-a-stream-cipher-into-a-block-cipher].

So why do people bother designing dedicated stream ciphers at all, then, if block ciphers can do the job just as well? Mostly, the reason is speed: sometimes, you need a fast cipher to encrypt lots of data, and there are some _really_ fast dedicated stream cipher designs out there. Some of these designs are also designed to be very compact to implement, either in software or hardware or both, so that if you really only need a stream cipher, you can save on code/circuit size by using one of those ciphers instead of a general block cipher based one.
]
#footnote[#a[encryption - Difference between stream cipher and block cipher - Cryptography Stack Exchange][https://crypto.stackexchange.com/questions/5333/difference-between-stream-cipher-and-block-cipher]]

#footnote[#a[Terminology: Is a block cipher in counter mode still considered a block cipher or is it classified as a stream cipher? - Cryptography Stack Exchange][https://crypto.stackexchange.com/questions/66930/terminology-is-a-block-cipher-in-counter-mode-still-considered-a-block-cipher-o]]
#footnote[#a[When to Use a Stream Cipher Instead of a Block Cipher? : r/crypto][https://www.reddit.com/r/crypto/comments/1cqzc30/when_to_use_a_stream_cipher_instead_of_a_block/]]
