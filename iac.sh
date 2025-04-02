#!/bin/bash
###############################################################################
#
# Infraestrutura como código
# Data: 2025-04-02
# @martchelou aka Marcelo de Miranda Vasconcelos e Almeida
# execute como root
#
###############################################################################
#
# clear screen
#
clear;
echo "#=== Infraestrutura como código ===#"
echo "#=== Data: 2025-04-02 ===#"
echo "#=== Iniciando configuração do sistema ===#"
#
# Create folders
#
echo "#=== Criando pastas ===#"
mkdir /public /adm /ven /sec

#
# Create groups
#
echo "#=== Criando grupos ===#"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
#
# Create users
#
echo "#=== Criando usuários ===#"
# [carlos,maria,joao,debora,sebastiana,roberto,josefina,amanda,rogerio]

useradd carlos -c "Carlos Magnos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -c "Maria Madaloca" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -c "João de Barros" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -c "Debora Inline" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Vettel" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -c "Roberto Calos" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN


useradd josefina -c "Josefina Chick Chick" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -c "Amanda Bobedece" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -c "Rogério Minguado" -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo "#=== Especificando permissões por setor do usuário ===#"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "#=== Mudando permissões ===#"
chmod 777 /public
chmod 770 /adm
chmod 770 /sec
chmod 770 /ven

echo "#=== process done successfully ===#"