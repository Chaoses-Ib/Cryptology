# Keyed Cryptographic Hash Functions
## Creating keyed hashes from unkeyed hashes
- The secret-prefix construction

  $$\text{Hash}(K || M)$$
  
  - 可能受到长度扩展攻击，例如 SHA-1 和 SHA-2，但 SHA-3 没有这种问题。
  - 如果需要使用不同长度的密钥，则需要修改为
  
    $$\text{Hash}(L||K||M)$$
- The secret-suffix construction
  
  $$\text{Hash}(M || K)$$

  只能计算出 $\text{Hash}(M || K || M')$，而无法计算出 $\text{Hash}(M || M' || K)$，因此不会受到长度扩展攻击。
- HMAC

  $$\begin{align}
    \operatorname{HMAC}(K, m) &= \operatorname{H}\Bigl(\bigl(K' \oplus opad\bigr) \parallel 
  \operatorname{H} \bigl(\left(K' \oplus ipad\right) \parallel m\bigr)\Bigr) \\
                          K' &= \begin{cases}
                                  \operatorname{H}\left(K\right) & \text{if}\ K\text{ is larger than block size} \\
                                  K                              & \text{otherwise}
                                  \end{cases}
  \end{align}$$
  
  where
  - $K'$ is a block-sized key derived from the secret key, $K$; either by padding to the right with 0s up to the block size, or by hashing down to less than or equal to the block size first and then padding to the right with zeros.
  - $opad$ is the block-sized outer padding, consisting of repeated bytes valued 0x5c.
  - $ipad$ is the block-sized inner padding, consisting of repeated bytes valued 0x36.