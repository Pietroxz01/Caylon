algoritmo "cadastrocarros2"
var
    modelos: vetor[1..100] de caractere
    precos: vetor[1..100] de real
    anos: vetor[1..100] de inteiro
    estoques: vetor[1..100] de inteiro
    N, i: inteiro

procedimento registrarCarro(i: inteiro)
inicio
    escreval("Por favor, informe o modelo do carro ", i, ": ")
    leia(modelos[i])

    escreval("Agora, digite o ano do carro ", i, ": ")
    leia(anos[i])
    enquanto (anos[i] < 1990) ou (anos[i] > 2025) faca
        escreval("O ano digitado é inválido. digite um ano entre 1990 e 2025:")
        leia(anos[i])
    fimenquanto

    escreval("Qual é o preço do carro ", i, "? ")
    leia(precos[i])
    enquanto precos[i] < 10000 faca
        escreval("O preço digitado é muito baixo. Por favor, digite um valor a partir de R$ 10.000,00:")
        leia(precos[i])
    fimenquanto

    escreval("Quantos desse modelo estão disponíveis em estoque? ")
    leia(estoques[i])
fimprocedimento

inicio
    escreval("Quantos carros você vai cadastrar? (até 50)")
    leia(N)

    se (N > 0) e (N <= 50) entao
        para i de 1 ate N faca
            escreval("")
            escreval("Cadastre o carro ", i)
            registrarCarro(i)
        fimpara
        

        escreval("")
        escreval("Aqui está a lista de carros cadastrados:")
        para i de 1 ate N faca
            escreval("Carro ", i, ": ", modelos[i])
            escreval("Ano: ", anos[i])
            escreval("Preço: R$ ", precos[i]:2:2)
            escreval("Estoque: ", estoques[i])
            escreval("")
        fimpara
    senao
        escreval("Digite um número valido. Tente novamente.")
    fimse
fimalgoritmo