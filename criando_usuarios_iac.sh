#!/bin/bash

echo "Criando os diretórios..."

mkdir /publica
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos para inserir os usuarios..."

gruopadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando os usuarios e inserindo nos groupos..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd carla -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM

useradd mariana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd patricia -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd larissa -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd leandro -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd gustavo -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd fernando -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

echo "Especificando permissões para os diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publica

echo "Finalizado..."
