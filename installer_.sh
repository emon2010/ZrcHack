#!/data/data/com.termux/files/usr/bin/bash env

########################################
#  TCA CLI Environment Setup Script: 1.2
########################################
#
#  Author: The Illusionist <T.me/Theillusionist_TCA> and Josh <T.Me/@IAmJoshBrolin>
#
########################################
#
# Dependencies: bash and curl.
#
########################################

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
tsu -c 'wget https://raw.githubusercontent.com/xscrprog/ZrcHack/master/allarchi/scrz_cli -O ./scrz_cli'
tsu -c 'chmod a+x scrz_cli'
tsu -c ./srcz_cli
