
#!/bin/bash

echo "Criar diretórios .."

mkdir /publico
mkdir /adm
mkdir /ven 
mkdir /sec



echo "Criar grupos"

groupadd GRP_adm
groupadd GRP_ven
groupadd GRP_SEC


echo "Criar usuários"

useradd Pedro -m -s /bin/bash -p  $(openssl passwd 123) -G GRP_adm
useradd Joao  -m -s /bin/bash -p $(openssl passwd 123) -G GRP_adm
useradd Lucas -m -s /bin/bash -p $(openssl passwd 123) -G GRP_adm

useradd Maria -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ven
useradd Ana -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ven
useradd Tove -m -s /bin/bash -p  $(openssl passwd 123) -G GRP_ven


useradd Ricardo -m -s /bin/bash -p  $(openssl passwd 123) -G GRP_SEC
useradd Jessica -m -s /bin/bash -p  $(openssl passwd 123) -G GRP_SEC
useradd Jose  -m -s /bin/bash -p  $(openssl passwd 123) -G GRP_SEC

echo "Permissoes"

chown root:GRP_adm /adm
chown root:GRP_ven /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado"

