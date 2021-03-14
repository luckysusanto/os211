
# Copyright (C) 2020-2021 Cicak Bin Kadal
# https://www.youtube.com/watch?v=KAXK07ni9gU

# This free document is distributed in the hope that it will be 
# useful, but WITHOUT ANY WARRANTY; without even the implied 
# warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# REV02 Fri 12 Mar 13:40:58 WIB 2021
# REV01 Tue 13 Oct 10:37:14 WIB 2020
# START Mon 28 Sep 21:05:04 WIB 2020

FILES=my*.asc mylog.txt mypubkey.txt myrank.txt my*.sh
SHA=SHA256SUM

echo rm -f SHA256SUM SHA256SUM.asc
rm -f SHA256SUM SHA256SUM.asc

echo sha256sum my*.txt my*.sh > SHA256SUM
sha256sum my*.txt my*.sh > SHA256SUM 

echo sha256sum -c SHA256SUM
sha256sum -c SHA256SUM

echo gpg -o SHA256SUM.asc -a -sb SHA256SUM
gpg -o SHA256SUM.asc -a -sb SHA256SUM

echo gpg --verify SHA256SUM.asc SHA256SUM
gpg --verify SHA256SUM.asc SHA256SUM

exit 0
