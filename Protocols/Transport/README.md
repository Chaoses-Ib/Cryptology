# Transport Layer Security (TLS)
[Wikipedia](https://en.wikipedia.org/wiki/Transport_Layer_Security)

[linux - SSL/TLS原理详解 - Sean's Notes - SegmentFault 思否](https://segmentfault.com/a/1190000002554673)

[字节面试官：你觉得HTTPS能防止重放攻击吗？\_Java\_InfoQ写作社区](https://xie.infoq.cn/article/65f3077fac48e688968e636e6)

## Versions
[Wikipedia](https://en.wikipedia.org/wiki/Transport_Layer_Security#History_and_development)

- TLS 1.2
  - 2008
- TLS 1.3
  - 2018

  [Halfrost-Field/contents/Protocol/TLS\_1.3\_Backward\_Compatibility.md at master - halfrost/Halfrost-Field](https://github.com/halfrost/Halfrost-Field/blob/master/contents/Protocol/TLS_1.3_Backward_Compatibility.md)

  > Support for TLS 1.3 was added to Secure Channel (schannel) for the GA releases of Windows 11 and Windows Server 2022.

  [TLS 1.3：一把打不开旧锁的新钥匙，为何难成主流？\_tlsv1.3 - CSDN博客](https://blog.csdn.net/u013129300/article/details/147806418)

[TLS Protocol Compatibility](https://support.globalsign.com/ssl/general-ssl/tls-protocol-compatibility)

> As of March 2025, the latest versions of all major web browsers support TLS 1.2 and 1.3 and have them enabled by default, with the exception of IE 11. TLS 1.0 and 1.1 are disabled by default on the latest versions of all major browsers.

The incompatibility of newer TLS versions can be used to defense DDoS attack?

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

## Tools
- [SSL Server Test (Powered by Qualys SSL Labs)](https://www.ssllabs.com/ssltest/)
