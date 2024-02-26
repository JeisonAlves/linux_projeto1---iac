#!/bin/bash

echo  "--------------------- Atualizar o servidor ---------------------"

apt-get update
apt-get upgrade -y


echo "--------------------- Instalar o apache2 e reiniciar o serviço para ativa-lo ---------------------"

apt-get install apache2 -y
systemctl restart apache2



echo "--------------------- Instalar o unzip ---------------------"

apt-get install unzip -y



echo "--------------------- Baixar uma aplixação http no github para o diretório /tmp e descomprimir ---------------------"

cd /tmp 

wget -c https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip 



echo "--------------------- Copiar os arquivos da aplicação para o diretório padrão do apache ---------------------"

cp -R /tmp/linux-site-dio-main/* /var/www/html/



echo "--------------------- Finalizado ---------------------"


