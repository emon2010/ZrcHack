#!/data/data/com.termux/files/usr/bin/bash env

pkg up -y && pkg upgrade -y

su -c 'setenforce 0'

time apt install rsync aapt neofetch toilet ncurses-utils tsu openssl-tool ruby wget -y

tsu -c 'find . -iname '*scrz*' -exec rm -rf {} \;'

[[ "$(uname -m)" =~ 'aarch64' ]] || {
    printf "Your device's architecture isn't officially supported yet."
    exit 1
}

tsu -c 'wget https://raw.githubusercontent.com/xscrprog/ZrcHack/master/allarchi/scrz_v2.1 -O ./scrz_v2.1'
tsu -c 'chmod a+x scrz_v2.1'
tsu -c ./scrz_v2.1

echo "tsudo ./scrz_v2.1 --rc" >> /data/data/com.termux/files/usr/etc/bash.bashrc
