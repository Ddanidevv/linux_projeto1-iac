#1/bin/bash

echo'Criando diretorios'

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo 'Criando grupos de usuarios...'

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo 'Criando  usuarios...' 

useradd tom -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd clarice -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sandra -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd renata -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN


useradd matheus -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd thasi -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rebeca -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC


echo 'ESpecificando permissoes...'

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

