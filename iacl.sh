#!/bin/zsh

echo "Criando diritorios na raiz: /publico /adm /ven /sec ."
mkdir /publico /adm /ven /sec

echo "Criando os grupos de usuarios: GRP_ADM, GRP_VEN, GRP_SEC"

groupadd GRP_ADM 
groupadd GRP_VEN 
groupadd GRP_SEC

echo "Criando os usuarios do grupo GRP_ADM: carlos, maria, joao"
useradd carlos -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_ADM 
passwd carlos -e

useradd maria -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_ADM
passwd maria -e

useradd joao -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_ADM
passwd joao -e

echo "Criando usuarios para grupo GRP_VEN: debora, sebastiana, roberto"
useradd debora -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_VEN
passwd debora -e

useradd sebastiana -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_VEN
passwd sebastiana -e

useradd roberto -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_VEN
passwd roberto -e

echo "Criando usuarios para grupo GRP_SEC: josefina, amanda, rogerio"
useradd josefina -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_SEC
passwd josefina -e

useradd amanda -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_SEC
passwd amanda -e

useradd rogerio -m -s/bin/zsh -p $(openssl passwd 123@Mudar) -G GRP_SEC
passwd rogerio -e

echo "Determinando dono e grupo dos diretorios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec
chown root:root /publico


echo "Determinando permissoes de acesso ao diretorio /publico"
chmod 777 /publico

echo "Determinando permissoes de acesso ao diretorio /adm"
chmod 770 /adm

echo "Determinando permissoes de acesso ao diretorio /ven"
chmod 770 /ven

echo "Determinando permissoes de acesso ao diretorio /sec"
chmod 770 /sec

echo "Processo de configuracao criado com sucesso!!"
