!$/bin/bash

echo "Criando Diretórios..."

mkdir /adiministração

mkdir /vendas

mkdir /segurança

mkdir /publico


echo "Diretórios criados!!!"

echo " "

echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEG

echo "Grupos criados!!"

echo " "

echo "Criando Usuários..."

useradd carlos -c "Carlos Eduardo" -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM

useradd marias -c "María Pereira" -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM

useradd joao -c "João de Souza" -m -s /bin/bash -p $(openssl passwd  Senha123) -G GRP_ADM



useradd debora -c "Débora Andrade" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd sebastiana -c "Sebastiana da Silva" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN

useradd roberto -c "Roberto Gomes" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN



useradd josefina -c "Josefina Leite" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEG

useradd amanda -c "Amanda Cabral" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEG

useradd rogerio -c "Rogerio Rodrigues" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEG

echo "Usúarios criados!!!"

echo " "

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adiministração
chown root:GRP_VEN /vendas
chown root:GRP_SEG /segurança


chmod 770 /adiministração
chmod 770 /vendas
chmod 770 /segurança
chmod 777 /publico

echo "Todas as configurações iniciais foram realizadas com sucesso!!!"

echo " "

echo "Encerrando atividades automatica..."
