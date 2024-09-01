# Kerckhoffs's Principle
**Kerckhoffs's principle (Kerckhoffs's desideratum, assumption, axiom, doctrine or law, 柯克霍夫原则)** holds that a cryptosystem should be secure, even if everything about the system, except the key, is public knowledge. This concept is widely embraced by cryptographers, in constract to security through obscurity, which is not.

Kerckhoffs's principle was reformulated (or possibly independently formulated) by American mathematician Claude Shannon as "the enemy knows the system", i.e., "one ought to design systems under the assumption that the enemy will immediately gain full familiarity with them". In that form, it is called **Shannon's maxim**.[^wiki]

## Security by obscurity
**Security by obscurity** is the reliance in security engineering on design or implementation secrecy as the main method of providing security to a system or component.

Knowledge of how the system is built differs from concealment and camouflage. The effectiveness of obscurity in operations security depends on whether the obscurity lives on top of other good security practices, or if it is being used alone. When used as an independent layer, obscurity is considered a valid security tool.[^obscurity-wiki] However, experience and military history has shown time and again that such systems are almost always weak, and they are very often broken easily as soon as the secret design has been reverse-engineered or leaked out through other means.[^understand]

注意到，security by obscurity 和 computationally secure 实际上都是通过增加攻击成本来起到防御作用的，但之所以 computationally secure 被普遍接受，而 security by obscurity 却被普遍批评，是因为 security by obscurity 能增加的攻击成本往往不高，与 computationnally secure 相比就更是如此。

[^wiki]: [Kerckhoffs's principle - Wikipedia](https://en.wikipedia.org/wiki/Kerckhoffs%27s_principle)
[^obscurity-wiki]: [Security through obscurity - Wikipedia](https://en.wikipedia.org/wiki/Security_through_obscurity)
[^understand]: Understanding Cryptography