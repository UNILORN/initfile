#!/bin/sh
echo "##########################################################"
echo "Initialize Program on UNILORN!!"
echo "##########################################################"
echo ""
echo "####################### apt update #######################"
sudo apt update
sudo apt -y install curl wget
sudo apt -y install vim

# PHP Install
sudo add-apt-repository ppa:ondrej/php
sudo apt -y install php7.2 php7.2-mysql php7.2-dev php7.2-fpm php7.2-mbstring

sudo apt -y install mysql-server mysql-client
sudo apt -y install apache2
sudo apt -y install ruby
sudo apt -y install git
sudo apt -y install libapache2-mod-php7.2
sudo apt -y install npm

sudo curl -o /usr/local/bin/jq -L https://github.com/stedolan/jq/releases/download/jq-1.5/jq-linux64 && sudo chmod +x /usr/local/bin/jq

# sudo apt -y install fish
# curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher

echo "################### composer install #####################"
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
composer config -g repositories.packagist composer https://packagist.jp

# 任意
sudo apt -y upgrade


