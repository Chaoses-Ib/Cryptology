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

[Computationally easy, spectrally good multipliers for congruential pseudorandom number generators](https://www.researchgate.net/publication/354960552_Computationally_easy_spectrally_good_multipliers_for_congruential_pseudorandom_number_generators)

C implementation:
```c
uint32_t random_u32(uint32_t prev) {
    return prev * 1664525U + 1013904223U;
}
```

C++: [`std::linear_congruential_engine`](https://en.cppreference.com/w/cpp/numeric/random/linear_congruential_engine)

## Comparison
> LCGs are fast and require minimal memory (one modulo-m number, often 32 or 64 bits) to retain state. This makes them valuable for simulating multiple independent streams. LCGs are not intended, and must not be used, for cryptographic applications; use a cryptographically secure pseudorandom number generator for such applications.
> 
> Although LCGs have a few specific weaknesses, many of their flaws come from having too small a state. The fact that people have been lulled for so many years into using them with such small moduli can be seen as a testament to the strength of the technique. A LCG with large enough state can pass even stringent statistical tests; a modulo-264 LCG which returns the high 32 bits passes TestU01's SmallCrush suite, and a 96-bit LCG passes the most stringent BigCrush suite.