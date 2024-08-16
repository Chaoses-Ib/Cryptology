# Transport Layer Security (TLS)
[Wikipedia](https://en.wikipedia.org/wiki/Transport_Layer_Security)

[linux - SSL/TLS原理详解 - Sean's Notes - SegmentFault 思否](https://segmentfault.com/a/1190000002554673)

[字节面试官：你觉得HTTPS能防止重放攻击吗？\_Java\_InfoQ写作社区](https://xie.infoq.cn/article/65f3077fac48e688968e636e6)

## Libraries
[Comparison of TLS implementations - Wikipedia](https://en.wikipedia.org/wiki/Comparison_of_TLS_implementations)

C/C++:
- [OpenSSL: TLS/SSL and crypto library](https://github.com/openssl/openssl)
  - Rust: [rust-openssl](https://github.com/sfackler/rust-openssl)

- [Mbed TLS: An open source, portable, easy to use, readable and flexible TLS library, and reference implementation of the PSA Cryptography API. Releases are on a varying cadence, typically around 3 - 6 months between releases.](https://github.com/Mbed-TLS/mbedtls)
  - [Code Size Optimisation: Epic Summary (23Q3) - Issue #7877](https://github.com/Mbed-TLS/mbedtls/issues/7877)

  Forks:
  - [RT-Thread-packages/mbedtls: An open source, portable, easy to use, readable and flexible SSL library](https://github.com/RT-Thread-packages/mbedtls)

- [wolfSSL: A small, fast, portable implementation of TLS/SSL for embedded devices to the cloud. wolfSSL supports up to TLS 1.3!](https://github.com/wolfSSL/wolfssl)
  - Typical footprint sizes range from 20~100 KB.

- [TinyTls: A Light Weight TLS Cryptography Library in C/C++ with Support for RSA ECC AES GCM and Chacha20/Poly1305](https://github.com/Anthony-Mai/TinyTls)
  - Cannot be built on Windows without modification.

- [BearSSL](https://bearssl.org/) ([GitHub](https://github.com/unkaktus/bearssl))

- [Botan: Crypto and TLS for Modern C++](https://github.com/randombit/botan)

- [AsyncTCP\_SSL: Asynchronous SSL TCP Library for ESP32, ESP32\_C3, ESP32\_S2, ESP32\_S3. This library is the base for future and more advanced Async SSL libraries, such as AsyncSSLWebServer, AsyncHTTPSRequest](https://github.com/khoih-prog/AsyncTCP_SSL)

Rust:
- [rustls: A modern TLS library in Rust](https://github.com/rustls/rustls)
  - [BENCHMARKING.md](https://github.com/rustls/rustls/blob/main/BENCHMARKING.md)
    - [aochagavia/rustls-bench-results](https://github.com/aochagavia/rustls-bench-results)
    - Less memory: 69 → 13 KiB
- [embedded-tls: An Rust TLS 1.3 implementation for embedded devices.](https://github.com/drogue-iot/embedded-tls)

  [Down the Yak Hole of TLS --- Drogue IoT](https://blog.drogue.io/yak-hole-of-tls/)

Python:
- [ssl: TLS/SSL wrapper for socket objects - Python3 Docs](https://docs.python.org/3/library/ssl.html)