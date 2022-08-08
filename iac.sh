#!/bin/bash

echo "Criando diretórios!"

mkdir /adm
mkdir /sec
mkdir /ven
mkdir /publico

echo "Criando grupos!"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Criando usuários e colocando-os em seus devidos grupos!"

echo "."
echo "."
echo "."

echo "Usuários do grupo ADM..."
useradd Joao -m -c "Joao Victor" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Maria -m -c "Maria das Dores" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd Carlos -m -c "Carlos de Oliveira" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

echo "Usuários do grupo VEN..."
useradd Sebastiana -m -c "Sebastiana Rodrigues" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Roberto -m -c "Roberto de Alcantara" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd Debora -m -c "Debora Liz Santos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

echo "Usuários do grupo SEC..."
useradd Josefina -m -c "Josefina Ferreira" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Amanda -m -c "Amanda Helena" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd Rogerio -m -c "Rogerio de Souza" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Classificando donos e permissões de cada diretório!"

echo "Especificando os donos de cada pasta..."
chown root:GRP_ADM /adm
chown root:GRP_SEC /sec
chown root:GRP_VEN /ven

echo "Especificando permissões de cada diretório..."
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven
chmod 777 /publico

echo "FIM DA EXECUÇÃO!!!"
