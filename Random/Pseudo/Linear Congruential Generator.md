# Linear Congruential Generator
[Wikipedia](https://en.wikipedia.org/wiki/Linear_congruential_generator)

LCG is defined by the recurrence relation:
$$X_{n+1}=(aX_n+c)\bmod m$$
where $X$ is the sequence of pesudo-random values, and
- $m>0$ is the modulus,
- $0\lt a\lt m$ is the multiplier,
- $0\le c\lt m$ is the increment,
- $0\le X_0\lt m$ is the seed or start value.

If $c=0$, the generator is often called a **multiplicative congruential generator (MCG, Lehmer RNG)**. If $c\ne 0$, the method is calle a **mixed congruential generator**.

C implementation:
```c
uint32_t random_u32(uint32_t prev) {
    return prev * 1664525U + 1013904223U;
}
```
