# Documentação – Execução do arquivo calculadora.sh

## Objetivo

Este documento apresenta o procedimento necessário para executar o arquivo `calculadora.sh` em um ambiente Linux.

## 1. Localizando o arquivo

1º abra o terminal Linux e acesse a pasta onde o arquivo `calculadora.sh` foi salvo.

Exemplo:
cd Documentos

Para verificar se o arquivo está na pasta, utilize:
ls

O arquivo `calculadora.sh` deverá aparecer na lista.

## 2. Alterar as permissões

Para que o arquivo possa ser executado, é necessário alterar suas permissões.

Execute:
chmod 744 calculadora.sh


A permissão `744` representa:

* Proprietário: leitura, escrita e execução.
* Grupo: somente leitura.
* Outros usuários: somente leitura.

Para verificar as permissões, execute:
ls -l calculadora.sh

O resultado deverá ser semelhante a:
-rwxr--r-- calculadora.sh

## 3. Executar o arquivo

Após configurar as permissões, execute o script utilizando:
./calculadora.sh

O programa será iniciado e solicitará dois números e a operação matemática desejada.

Exemplo:
===== CALCULADORA =====

Digite o primeiro número:
10

Digite o segundo número:
5

Escolha a operação:
1 - Soma
2 - Subtração
3 - Multiplicação
4 - Divisão

1

Resultado: 15


## Resumo dos comandos
chmod 744 calculadora.sh
ls -l calculadora.sh
./calculadora.sh
