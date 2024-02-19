#!/bin/bash


echo "_________________DIRETÓRIOS_________________"
echo "Criando os diretórios dos setores"

mkdir /publico
mkdir /ven
mkdir /adm
mkdir /sec

echo "_________________GRUPOS_________________"
echo "Criando os grupos"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "_________________USUÁRIOS_________________"
echo "Criando usuários e adicionando aos seus respectivos grupos"

useradd zeca -c "zeca" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd Senha123)
passwd zeca -e

useradd maria -c "Maria" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd Senha123)
passwd maria -e 

useradd joao -c "João" -G GRP_ADM -s /bin/bash -m -p $(openssl passwd Senha123)
passwd joao -e 

useradd debora -c "Debora" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd Senha123)
passwd debora -e 

useradd sebastiana -c "Sebastiana" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd Senha123)
passwd sebastiana -e 

useradd roberto -c "Roberto" -G GRP_VEN -s /bin/bash -m -p $(openssl passwd Senha123)
passwd roberto -e 

useradd josefina -c "Josefina" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd Senha123)
passwd josefina -e 

useradd amanda -c "Amanda" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd Senha123)
passwd amanda -e 

useradd rogerio -c "Rogerio" -G GRP_SEC -s /bin/bash -m -p $(openssl passwd Senha123)
passwd rogerio -e 


echo "_________________PERMISSÕES_________________"
echo "Definindo o dono do diretório e os grupos que fazem parte"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Definindo as permissões nos diretórios"

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico


echo "Finalizado"
