#!/bin/bash

echo "Atualizando Parametros do Servidor..."

apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo "Atualizações Realizadas!"

echo "Configurando Servidor Web..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Servidor Web Finalizado!!"
