#!/bin/bash

echo "Criando Diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando Grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Cadastrando usuários..."

useradd carlos -m -s /bin/bash -G GRP_ADM
yes '123' | passwd carlos

useradd maria -m -s /bin/bash -G GRP_ADM
yes '123' | passwd maria

useradd joao_ -m -s /bin/bash -G GRP_ADM
yes '123' | passwd joao_

useradd debora -m -s /bin/bash -G GRP_VEN
yes '123' | passwd debora

useradd sebastiana -m -s /bin/bash -G GRP_VEN
yes '123' | passwd sebastiana

useradd roberto -m -s /bin/bash -G GRP_VEN
yes '123' | passwd roberto

useradd josefina -m -s /bin/bash -G GRP_SEC
yes '123' | passwd josefina

useradd amanda -m -s /bin/bash -G GRP_SEC
yes '123' | passwd amanda

useradd rogerio -m -s /bin/bash -G GRP_SEC
yes '123' | passwd rogerio

echo "Adequando permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico
 
echo "Fim."
