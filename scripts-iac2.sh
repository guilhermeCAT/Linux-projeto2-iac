#!/bin/bash

echo "Atualiznado o servidor..."
apt-get update 
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://codeload.github.com/denilsonbonatti/linux-site-dio/zip/refs/heads/main.zip
mv main main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

