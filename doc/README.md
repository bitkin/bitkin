Bitkincoin Core
=============

Setup
---------------------
Bitkincoin Core is the original Bitkincoin client and it builds the backbone of the network. It downloads and, by default, stores the entire history of Bitkincoin transactions, which requires a few hundred gigabytes of disk space. Depending on the speed of your computer and network connection, the synchronization process can take anywhere from a few hours to a day or more.

To download Bitkincoin Core, visit [bitkincoin.com](https://bitkincoin.com/en/download/).

Running
---------------------
The following are some helpful notes on how to run Bitkincoin Core on your native platform.

### Unix

Unpack the files into a directory and run:

- `bin/bitkincoin-qt` (GUI) or
- `bin/bitkincoind` (headless)

### Windows

Unpack the files into a directory, and then run bitkincoin-qt.exe.

### macOS

Drag Bitkincoin Core to your applications folder, and then run Bitkincoin Core.

### Need Help?

* See the documentation at the [Bitkincoin Wiki](https://en.bitkincoin.it/wiki/Main_Page)
for help and more information.
* Ask for help on [#bitkincoin](https://webchat.freenode.net/#bitkincoin) on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitkincoin).
* Ask for help on the [BitkincoinTalk](https://bitkincointalk.org/) forums, in the [Technical Support board](https://bitkincointalk.org/index.php?board=4.0).

Building
---------------------
The following are developer notes on how to build Bitkincoin Core on your native platform. They are not complete guides, but include notes on the necessary libraries, compile flags, etc.

- [Dependencies](dependencies.md)
- [macOS Build Notes](build-osx.md)
- [Unix Build Notes](build-unix.md)
- [Windows Build Notes](build-windows.md)
- [FreeBSD Build Notes](build-freebsd.md)
- [OpenBSD Build Notes](build-openbsd.md)
- [NetBSD Build Notes](build-netbsd.md)
- [Gitian Building Guide (External Link)](https://github.com/bitkincoin-core/docs/blob/master/gitian-building.md)

Development
---------------------
The Bitkincoin repo's [root README](/README.md) contains relevant information on the development process and automated testing.

- [Developer Notes](developer-notes.md)
- [Productivity Notes](productivity.md)
- [Release Notes](release-notes.md)
- [Release Process](release-process.md)
- [Source Code Documentation (External Link)](https://doxygen.bitkincoin.com/)
- [Translation Process](translation_process.md)
- [Translation Strings Policy](translation_strings_policy.md)
- [JSON-RPC Interface](JSON-RPC-interface.md)
- [Unauthenticated REST Interface](REST-interface.md)
- [Shared Libraries](shared-libraries.md)
- [BIPS](bips.md)
- [Dnsseed Policy](dnsseed-policy.md)
- [Benchmarking](benchmarking.md)

### Resources
* Discuss on the [BitkincoinTalk](https://bitkincointalk.org/) forums, in the [Development & Technical Discussion board](https://bitkincointalk.org/index.php?board=6.0).
* Discuss project-specific development on #bitkincoin-core-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitkincoin-core-dev).
* Discuss general Bitkincoin development on #bitkincoin-dev on Freenode. If you don't have an IRC client, use [webchat here](https://webchat.freenode.net/#bitkincoin-dev).

### Miscellaneous
- [Assets Attribution](assets-attribution.md)
- [bitkincoin.conf Configuration File](bitkincoin-conf.md)
- [Files](files.md)
- [Fuzz-testing](fuzzing.md)
- [Reduce Memory](reduce-memory.md)
- [Reduce Traffic](reduce-traffic.md)
- [Tor Support](tor.md)
- [Init Scripts (systemd/upstart/openrc)](init.md)
- [ZMQ](zmq.md)
- [PSBT support](psbt.md)

License
---------------------
Distributed under the [MIT software license](/COPYING).
