#!/bin/sh
echo "##########################################################"
echo "Initialize Program on UNILORN!!"
echo "##########################################################"
echo ""
echo "####################### apt update #######################"
sudo apt update
sudo apt -y install software-properties-common

sudo apt -y install curl wget
sudo apt -y install vim

# PHP Install
sudo add-apt-repository ppa:ondrej/php
sudo apt update
sudo apt -y install php7.2 php7.2-xml php7.2-mysql php7.2-dev php7.2-fpm php7.2-mbstring

# MySQL Install
sudo apt -y install mysql-server mysql-client

# Apache Install
sudo apt -y install apache2

# Ruby Install
sudo apt -y install ruby

# git Install
sudo apt -y install git

sudo apt -y install libapache2-mod-php7.2

# Node Install
sudo apt -y install npm
sudo npm install -g n
sudo n latest

# Python Install
sudo apt -y install build-essential libncursesw5-dev libgdbm-dev libc6-dev zlib1g-dev libsqlite3-dev tk-dev libssl-dev openssl libbz2-dev libreadline-dev

git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.profile
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
source ~/.profile
sudo pyenv install 3.6.0
sudo pyenv global 3.6.0

# jq Install
sudo curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && sudo chmod +x /usr/local/bin/jq

# sudo apt -y install fish
# curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "################### composer install #####################"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer config -g repositories.packagist composer https://packagist.jp

# 任意
sudo apt -y upgrade


