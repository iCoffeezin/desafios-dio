#!/bin/bash

echo "Atualizando servidor..."

apt-get update -y
apt-get  upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação..."


wget --show-progress https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip -P /tmp/
unzip /tmp/main.zip -d /tmp/
cp -r /tmp/linux-site-dio-main/* /var/www/html/

echo "Finalizado!"
