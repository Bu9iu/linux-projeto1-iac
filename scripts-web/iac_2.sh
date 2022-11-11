#!/bin/bash

## Instalador para o Oracle Linux 8 

echo "Atualizando o Servidor..."
yum update
yum upgrade -y
dnf install httpd -y
systemctl enable --now httpd.service

echo "Baixando a aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html

