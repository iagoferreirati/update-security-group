# Add ingress rule in security group

Este script é usado para inserir novas regras em todos os security groups existente na sua conta da AWS.

Devera ser declarado as seguintes variavaeis:

- Profile cadastrado no ~/.aws/credentials
profile="pessoal"  

- Bloco cidr a ser liberado
cidr="10.10.0.0/16"

- Porta a ser liberada
port="-1" 

- Descrição da regra
Description='ALLOW VPC KUBERNETES'