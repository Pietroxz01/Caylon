algoritmo "cadastrocliente"
var
  nome: caractere
  cpf: caractere
  email: caractere
  i, N: inteiro
inicio
  escreval("Quantos clientes deseja cadastrar?")
  leia(N)

  para i de 1 ate N faca
    escreval("Digite o nome do cliente ", i)
    leia(nome)
    escreval("Digite o CPF do cliente ", i)
    leia(cpf)
    escreval("Digite o email do cliente ", i)
    leia(email)

    escreval("Cliente ", i, " cadastrado:")
    escreval("Nome: ", nome)
    escreval("CPF: ", cpf)
    escreval("Email: ", email)
  fimpara
fimalgoritmo
