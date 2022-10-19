#!/bin/bash
#
# iac.sh - Criação de  Sistema de Diretórios, Usuários, Grupos e Permissões no Linux
#
#
# Autor: Rogério de José Paixão
#
# Contato: rogerio.j.paixao@gmail.com
#
# Link do Projeto: https://github.com/rjpaixao/projeto-iac-linux
#
#-------------------------------------------------------------------------------------
#
# Este programa cria automaticamente: diretórios, usuários, grupos
# Insere os usuários em grupos especificos, concede permissão aos
# grupos e define os acessos dos usuários.
#
# Cada usuário criado ja possui a sua pasta /home e a senha definida
#
#

echo "Criando sistema de Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos de Usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando Usuários e Adicionando os Grupos..."

useradd carlos -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_ADM
useradd maria -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_ADM
useradd joao -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_ADM


useradd debora -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_VEN
useradd sebastiana -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_VEN
useradd roberto -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_VEN

useradd josefina -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_SEC
useradd amanda -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_SEC
useradd ronilson -m -s  /bin/bash -p $(openssl passwd -1 Senha69884412) -G GRP_SEC

echo "Especificando Permissões aos Diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Procedimento  Finalizado...."
