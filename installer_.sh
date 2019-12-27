#!/data/data/com.termux/files/usr/bin/bash env


# Update and upgrade
pkg up -y && pkg upgrade -y

# Switch permissive
su -c 'setenforce 0'

# Install dependencies
time apt install rsync aapt neofetch toilet ncurses-utils tsu openssl-tool ruby wget -y

# Remove existing files
tsu -c 'find . -iname '*scrz*' -exec rm -rf {} \;'

# Device architecture
[[ "$(uname -m)" =~ 'aarch64' ]] || {
    printf "Your device's architecture isn't officially supported yet."
    exit 1
}

# Fetch the ELF and setup
tsu -c 'wget https://raw.githubusercontent.com/emon2010/ZrcHack/master/allarchi/scrz_v2.1 -O ./scrz_v2.1'
tsu -c 'chmod a+x scrz_v2.1'
tsu -c ./srcz_v2.1
