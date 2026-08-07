# Documentação – Código da Calculadora em Shell Script
## Objetivo

O script `calculadora.sh` foi desenvolvido para realizar operações matemáticas básicas utilizando o terminal Linux.

As operações disponíveis são:

* Soma
* Subtração
* Multiplicação
* Divisão

## Código
#!/bin/bash
echo "------ CALCULADORA ------"      

echo "Digite o primeiro número:"
read num1

echo "Digite o segundo número:"
read num2

echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"

read operacao

case $operacao in
    1)
        resultado=$((num1 + num2))
        echo "Resultado: $resultado"
        ;;
    2)
        resultado=$((num1 - num2))
        echo "Resultado: $resultado"
        ;;
    3)
        resultado=$((num1 * num2))
        echo "Resultado: $resultado"
        ;;
    4)
        if [ "$num2" -eq 0 ]; then
            echo "Erro: não é possível dividir por zero."
        else
            resultado=$((num1 / num2))
            echo "Resultado: $resultado"
        fi
        ;;
    *)
        echo "Opção inválida."
        ;;
esac


## Explicação do código

### 1. Definição do interpretador
#!/bin/bash
Essa linha informa ao sistema Linux que o script deverá ser executado utilizando o Bash.

### 2. Exibição do título
echo "===== CALCULADORA ====="
O comando `echo` é utilizado para mostrar informações na tela do terminal.

### 3. Entrada do primeiro número
echo "Digite o primeiro número:"
read num1

O programa solicita o primeiro número.
O comando `read` recebe o valor digitado pelo usuário e armazena esse valor na variável `num1`.

### 4. Entrada do segundo número
echo "Digite o segundo número:"
read num2

O segundo número digitado é armazenado na variável `num2`.

### 5. Escolha da operação
echo "Escolha a operação:"
echo "1 - Soma"
echo "2 - Subtração"
echo "3 - Multiplicação"
echo "4 - Divisão"
read operacao

O programa apresenta as operações disponíveis.
A opção escolhida pelo usuário é armazenada na variável `operacao`.

### 6. Estrutura case
case $operacao in


O comando `case` verifica qual opção foi digitada pelo usuário.

Dependendo da opção escolhida, uma operação diferente será executada.

### 7. Soma
resulado=$((num1 + num2))


Realiza a soma dos dois números.

Exemplo:
10 + 5 = 15


### 8. Subtração
resultado=$((num1 - num2))

Realiza a subtração dos dois números.

Exemplo:
10 - 5 = 5

### 9. Multiplicação
resultado=$((num1 * num2))


Realiza a multiplicação dos dois números.

Exemplo:
10 × 5 = 50

### 10. Divisão
Antes de realizar a divisão, o programa verifica se o segundo número é zero.


if [ "$num2" -eq 0 ]; then

Caso seja zero, será exibida a mensagem:
Erro: não é possível dividir por zero.

Caso contrário, a divisão será realizada:
resultado=$((num1 / num2))


### 11. Opção inválida
Caso o usuário digite uma opção diferente de `1`, `2`, `3` ou `4`, o programa executará:
echo "Opção inválida."

## Conclusão
O script utiliza comandos básicos do Shell Script, como `echo`, `read`, `case`, `if` e variáveis.


