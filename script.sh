#!/bin/bash

echo "Criando Grupos!"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos Criados"

echo "***************************************"

echo "Criando diretorios"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

chown root:GRP_ADM /adm/
chown root:GRP_VEN /ven/
chown root:GRP_SEC /sec/

chmod 777 /publico/
chmod 770 /adm/
chmod 770 /ven/
chmod 770 /sec/

echo "Diretorios Criados"


echo "***************************************"

echo "Criando Usuarios!"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e carlos

useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e maria

useradd joao -m -c "Joao" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e joao

useradd debora -m -c "debora" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e debora

useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e sebastiana

useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e roberto

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e josefina

useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e amanda

useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e rogerio

echo "Usuarios Criados!"

