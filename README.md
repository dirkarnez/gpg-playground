gpg-playground
==============
### Tutorials
- [GPG入门教程 - 阮一峰的网络日志](https://www.ruanyifeng.com/blog/2013/07/gpg.html)
- [GnuPG Public Key | OpenVPN](https://openvpn.net/community-resources/sig/)
- en/decrypt tar (use linux's `split` to split files, see [How to Split Binary Files in Linux](https://linuxhint.com/split-binary-files-linux/). **not yet tried**)
  1. `tar czvf - MyFolder | gpg --no-symkey-cache  --symmetric --cipher-algo aes256 -o encrypted.tar.gz.gpg`
  2. `gpg --no-symkey-cache --no-options --output decrypted.tar.gz --decrypt encrypted.tar.gz.gpg`
  3. `tar -xvf decrypted.tar.gz -C MyOutputDirectory`
  4. DO NOT use GUI software because it may contains old version of gpg which does not support `--no-symkey-cache`
