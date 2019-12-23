
pkg up -y && pkg upgrade -y

su -c 'setenforce 0'

time apt install rsync aapt neofetch toilet ncurses-utils tsu openssl-tool ruby wget -y

tsu -c 'find . -iname '*tca*' -exec rm -rf {} \;'

[[ "$(uname -m)" =~ 'aarch64' ]] || {
    printf "Your device's architecture isn't officially supported yet."
    exit 1
}

tsu -c 'wget https://raw.githubusercontent.com/TeamTCA/Illusion-Remastered/master/Builds/arm64/tca_v1.2-cli -O ./tca_v1.2-cli'
tsu -c 'chmod a+x tca_v1.2-cli'
tsu -c ./tca_v1.2-cli