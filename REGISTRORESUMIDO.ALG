algoritmo "registro_resumido"

var
  modelos: vetor[1..50] de caractere
  precos: vetor[1..50] de real
  anos: vetor[1..50] de inteiro
  estoques: vetor[1..50] de inteiro
  i: inteiro
  N: inteiro
  ind: inteiro
  qtd: inteiro
  totalCarros: inteiro
  total: real
  parcial: real
  desconto: real
  imposto: real
  valorDesc: real

inicio
  escreval("Qtd de carros p/ cadastrar (até 50):")
  leia(N)

  se (N <= 0) ou (N > 50) entao
    escreval("Qtd inválida!")
    pare
  fimse

  para i de 1 ate N faca
    escreval("Modelo: ")
    leia(modelos[i])

    escreval("Ano: ")
    leia(anos[i])
    enquanto (anos[i] < 1990) ou (anos[i] > 2025) faca
      escreval("Ano inválido. Digite novamente:")
      leia(anos[i])
    fimenquanto

    escreval("Preço (mín R$10.000): ")
    leia(precos[i])
    enquanto precos[i] < 10000 faca
      escreval("Preço inválido. Digite novamente:")
      leia(precos[i])
    fimenquanto

    escreval("Estoque: ")
    leia(estoques[i])
  fimpara

  total <- 0
  totalCarros <- 0

  repita
    escreval("Nº do carro (1 a ", N, ") ou 0 p/ sair:")
    leia(ind)

    se (ind > 0) e (ind <= N) entao
      escreval("Qtd desejada:")
      leia(qtd)

      se qtd <= estoques[ind] entao
        desconto <- 0

        se qtd > 2 entao
          desconto <- desconto + 0.05
        fimse

        se anos[ind] < 2025 entao
          desconto <- desconto + 0.10
        fimse

        parcial <- precos[ind] * qtd * (1 - desconto)
        total <- total + parcial
        totalCarros <- totalCarros + qtd
        estoques[ind] <- estoques[ind] - qtd

        valorDesc <- desconto * 100
        escreval("Compra realizada com sucesso!")
        escreval("Valor final: R$ ", parcial:2:2)
        escreval("Desconto aplicado: ", valorDesc:2:2, "%")
      senao
        escreval("Estoque insuficiente.")
      fimse
    fimse
  ate ind = 0

  imposto <- 0
  se total > 100000 entao
    imposto <- total * 0.08
  fimse

  escreval("---------- RELATÓRIO FINAL ----------")
  escreval("Total de carros vendidos: ", totalCarros)
  escreval("Subtotal: R$ ", total:2:2)
  escreval("Imposto de luxo: R$ ", imposto:2:2)
  escreval("Total final com imposto: R$ ", (total + imposto):2:2)

fimalgoritmo
