#!/data/data/com.termux/files/usr/bin/bash
pkg up -y && pkg upgrade -y

su -c 'setenforce 0'

time apt install tput rsync aapt neofetch toilet ncurses-utils tsu openssl-tool ruby wget lolcat -y

tsu -c 'find . -iname '*scrz*' -exec rm -rf {} \;'

[[ "$(uname -m)" =~ 'aarch64' ]] || {
    printf "Your device's architecture isn't officially supported yet."
    exit 1
}

tsu -c 'wget https://raw.githubusercontent.com/xscrprog/ZrcHack/master/allarchi/scrz_cli -O ./scrz_cli'
tsu -c 'chmod a+x scrz_cli'
tsu -c ./scrz_cli