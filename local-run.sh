export PATH="/mingw64/bin:/usr/local/bin:/usr/bin:/bin" &&

curl https://keys.openpgp.org/vks/v1/by-fingerprint/F554A3687412CFFEBDEFE0A312F5F7B42F2B01E7 -L --output security-openvpn-net.asc
curl https://swupdate.openvpn.org/community/releases/openvpn-2.5.7.tar.gz.asc -L --output openvpn-2.5.7.tar.gz.asc
curl https://swupdate.openvpn.org/community/releases/openvpn-2.5.7.tar.gz -L --output openvpn-2.5.7.tar.gz

printf "\n\nGPG import\n";
gpg --import security-openvpn-net.asc

printf "\n\nGPG verify\n";
gpg --verify openvpn-2.5.7.tar.gz.asc openvpn-2.5.7.tar.gz

printf "\n\nGPG verfiy with name detection (target file \"openvpn-2.5.7.tar.gz\" in same location as .asc)\n";
gpg openvpn-2.5.7.tar.gz.asc

read -p "Press to exit"