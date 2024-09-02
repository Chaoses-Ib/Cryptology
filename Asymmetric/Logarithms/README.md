# Discrete Logarithms
[Wikipedia](https://en.wikipedia.org/wiki/Discrete_logarithm)

- 2014-01 [Why is the discrete logarithm problem assumed to be hard? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/12865/why-is-the-discrete-logarithm-problem-assumed-to-be-hard)

- 2016-09 [Why is NON DISCRETE logarithm problem not hard as the DISCRETE logarithm problem (so computationally hard)? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/39902/why-is-non-discrete-logarithm-problem-not-hard-as-the-discrete-logarithm-problem)

  > The simple answer is that the normal logarithm "problem" is not hard, because we know how to compute logarithms quickly. And discrete logarithm problem is hard in some groups because we do not know hot to compute them quickly.

  > Normal logarithm over the integers isn't hard because we have efficient algorithms for computing it. In this case we want to compute $X$, given $b$ and $Y$ such that $b^X=Y$ (where all values are integers). There exist polynomial time algorithms for computing that $X$ (sublinear algorithms in fact. The reals are a different story, but I don't want to muddy the waters too much.)

  > The main point is that the entire apparatus of calculus applies to exponentiation over the real numbers. For instance, if $a$ and $b$ are close, then $g^a$ and $g^b$ are close as well. The exponential function and its inverse are nice, so you can use infinite series for your computation, and some partial sum will be close enough to the correct answer. Or since exponentiation is monotonic, you can use binary search.
  > 
  > The groups we use for cryptography are usually discrete, and the apparatus of calculus no longer applies. For example, there is no sensible distance measure that relates the distance between aa and bb and the distance between gaga and gbgb. And this means things end up being more difficult.

- 2018-12 [key derivation - Continuous logarithms in cryptography - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/66175/continuous-logarithms-in-cryptography)

- 2019-05 [modular arithmetic - What makes the Discrete Logarithm Problem hard? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/70381/what-makes-the-discrete-logarithm-problem-hard)

  > It is true that you have in the worst case $ord(Z^∗_p)$ values to test. However, the complexity of a problem is actually measured according to the size of the input of the problem in computer representation which is binary. Here the inputs to our problem are $h$ and $p$. These two are integers both of size $\log_2(p)$ at most in computer binary representation. And the algorithm would take $ord(Z^∗_p)=p$ iterations. However, $p=2^{\log_2(p)}$, so we can clearly see that the number of iterations required is actually exponential to the size of our input of the problem. Which is why the discret logarithm problem is hard.

- 2022-04 [group theory - Why is the discrete logarithm problem hard? - Cryptography Stack Exchange](https://crypto.stackexchange.com/questions/99441/why-is-the-discrete-logarithm-problem-hard)