Algoritmo "MENU_AGENCIAS_DE_VIAGENS"
// Autor(a)    : Caroline Pacheco
// Data atual  : 22/06/2022
// Descri��o   : Usando conceitos de programa��o estruturada (Vetor), criar em pseudoc�digo
// um menu para simular um cadastro para uma ag�ncia de viagens com as seguintes fun��es:
// fun��o: cadastro de cliente
// Fun��o: cadastro de destino
// E consulta para cada estrutura de dados


Var
   // Se��o de Declara��es das vari�veis

   clientes: vetor [1..10,1..4] de caractere // vetor de cadastro de clientes
   destinos: vetor [1..10,1..4] de caractere // vetor de cadastro de destinos
   cliente: vetor [1..4] de caractere // vetor de auxilio de clientes
   destino: vetor [1..4] de caractere // vetor de auxilio do destino
   qtdCli, qtdDes : inteiro // variaveis que guarda qtd de clientes e destinos na hora do cadastro


   // Procedimento para cadastra cliente no sistema

procedimento cadastrarCliente
var

   codCli, nome, sobrenome, cpf : caractere  // variaveis para dados do cliente
   qtd, i, j : inteiro // variaveis de rela��o com os dados do cliente
   opc : inteiro
inicio
   limpatela
   escreval("        CADASTRO DOS CLIENTES          ")
   escreval("*************************************")
   escreva("Deseja cadastrar quantos clientes? -> ")
   leia(qtd) // ler a quantidade de clientes o usuario ir� cadastrar

   qtdCli <- qtd // grava a quantidade na variavel qtdCli

   para i de 1 ate qtd faca // la�o para ler os dados passado pelo usuairo e salvo nas variaveis
      escreva("Digite o C�DIGO do cliente: -> ")
      leia(codCli) // ler o codigo do cliente e salva na variavel codCli
      escreva("Digite o NOME do cliente: -> ")
      leia(nome) // ler o nome do cliente e salva na variavel nome
      escreva("Digite o SOBRENOME do cliente: -> ")
      leia(sobrenome) // ler o sobrenome do cliente e salva na variavel sobrenome
      escreva("Digite o CPF do cliente: -> ")
      leia(cpf) // ler o cpf do cliente e salva na variavel cpf

      escreval("=================================================")

      // salva no vetor de clientes
      clientes[i, 1] <- codCli
      clientes[i, 2] <- nome
      clientes[i, 3] <- sobrenome
      clientes[i, 4] <- cpf
      // a posicao i indica a coluna da matriz os indices 1 a 4 indica a linha da matriz

   fimpara
   // escreve a informacao dos dados cadastrados
   limpatela
   escreval(qtd, " Cadastro feito com sucesso! ")
   escreval("")
   para j de 1 ate qtd faca
      escreval("C�DIGO: ", clientes[j, 1], "| NOME: ", clientes[j, 2], "| SOBRENOME: ", clientes[j, 3], "| CPF: " ,clientes[j, 4])
   fimpara

   escreval("")
   escreval("Deseja retornar ao menu principal? SIM[1] | N�O[2] | SAIR[3]")
   leia(opc)
   escolha opc
   caso 1
      menu
   caso 2
      cadastrarCliente
   caso 3
      escreval("     Sistema encerrado........")
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
   outrocaso
      escreval("opcao invalida")
   fimescolha
fimprocedimento

// cadastra destino no sistema

procedimento cadastrarDestino

var

   codDes, cidade, estado, pais : caractere  // variaveis para os dados do destino
   qtd, i, j : inteiro // variaveis de rela��o com os dados do destino
   opc : inteiro
inicio
   limpatela
   escreval("       CADASTRO DOS DESTINOS         ")
   escreval("*************************************")
   escreva("Deseja cadastrar quantos destinos? -> ")
   leia(qtd) // ler a quantidade de Destinos que o usuario ir� cadastrar

   qtdDes <- qtd // grava a quantidade na variavel qtdDes

   para i de 1 ate qtd faca // la�o para ler os dados passado pelo usuairo e salvo nas variaveis
      escreva("Digite o C�DIGO DO DESTINO: -> ")
      leia(codDes) // ler o codigo do destino e salva na variavel codDes
      escreva("Digite o NOME DA CIDADE: -> ")
      leia(cidade) // ler a cidade e salva na variavel cidade
      escreva("Digite o NOME DO ESTADO: -> ")
      leia(estado) // ler o estado e salva na variavel estado
      escreva("Digite o NOME DO PA�S: -> ")
      leia(pais) // ler o pais e salva na variavel pais

      escreval("================================================")

      // salva no vetor de Destino
      destinos[i, 1] <- codDes
      destinos[i, 2] <- cidade
      destinos[i, 3] <- estado
      destinos[i, 4] <- pais
      // a posicao i indica a coluna da matriz os indices 1 a 4 indica a linha da matriz
   fimpara

   // escreve a informacao dos dados cadastrados
   limpatela
   escreval(qtd, " Cadastro feito com sucesso! ")
   escreval("")
   para j de 1 ate qtd faca
      escreval("C�DIGO: ", destinos[j, 1], "| CIDADE: ", destinos[j, 2], "| ESTADO: ", destinos[j, 3], "| PAIS: " ,destinos[j, 4])
   fimpara

   escreval("")
   escreval("Deseja retornar ao menu principal? SIM[1] | N�O[2] | SAIR[3]")
   leia(opc)
   escolha opc
   caso 1
      menu
   caso 2
      cadastrarDestino
   caso 3
      escreval("     Sistema encerrado........")
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
   outrocaso
      escreval("opcao invalida")
   fimescolha

fimprocedimento

// Consulta cliente cadastrado pelo cpf

procedimento consultaCliente
var
   consulta : caractere
   i : inteiro
   encontrado : logico
   opc : inteiro
inicio
   limpatela
   escreval("        CONSULTA DOS CLIENTES        ")
   escreval("*************************************")
   escreva("Digite o CPF do cliente -> ")
   leia(consulta)
   para i de 1 ate qtdCli faca
      se consulta = clientes[i,4] entao
         encontrado := verdadeiro

         escreval("DADOS DO CLIENTE")
         escreval("C�DIGO: ", clientes[i,1])
         escreval("NOME: ", clientes[i,2])
         escreval("SOBRENOME: ", clientes[i,3])
         escreval("CPF: ", clientes[i,4])
         interrompa
      senao
         encontrado := falso
      fimse
   fimpara
   se encontrado = falso entao
      escreval("Cliente n�o cadastrado")
   fimse

   escreval("")
   escreval("Deseja retornar ao menu principal? SIM[1] | N�O[2]| SAIR[3]")
   leia(opc)
   escolha opc
   caso 1
      menu
   caso 2
      consultaCliente
   caso 3
      escreval("     Sistema encerrado........")
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
   outrocaso
      escreval("opcao invalida")
   fimescolha

fimprocedimento

// Consulta cliente cadastrado pelo c�digo

procedimento consultaDestino
var
   consulta : caractere
   i : inteiro
   encontrado : logico
   opc : inteiro
inicio
   limpatela
   escreval("CONSULTA DOS DESTINOS")
   escreva("Digite o c�digo do destino: ")
   leia(consulta)
   para i de 1 ate qtdDes faca
      se consulta = destinos[i,1] entao
         encontrado := verdadeiro

         escreval("DADOS DO DESTINO")
         escreval("C�DIGO: ", destinos[i,1])
         escreval("CIDADE: ", destinos[i,2])
         escreval("ESTADO: ", destinos[i,3])
         escreval("PA�S: ", destinos[i,4])
         interrompa
      senao
         encontrado := falso
      fimse
   fimpara
   se encontrado = falso entao
      escreval("Destino n�o cadastrado")
   fimse

   escreval("")
   escreval("Deseja retornar ao menu principal? SIM[1] | N�O[2] | SAIR[3]")
   leia(opc)
   escolha opc
   caso 1
      menu
   caso 2
      consultaDestino
   caso 3
      escreval("     Sistema encerrado........")
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
   outrocaso
      escreval("opcao invalida")
   fimescolha
fimprocedimento

// Menu do Sistema
procedimento logomarca
var
   opc: inteiro
inicio
   limpatela
   escreval("                     NOSSA LOGOMARCA                         ")
   escreval("*************************************************************")
   escreval("")
   escreval("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
   escreval("XX       XX          XX  XXXX  XX       XX  XXX  XX         XX")
   escreval("XX  XXXXXXXXXXX  XXXXXX  XXXX  XX  XXX  XX  XXX  XX  XXXXX  XX")
   escreval("XX  XXXXXXXXXXX  XXXXXX        XX  XXX  XX  XXX  XX  XX     XX")
   escreval("XX  XXXXXXXXXXX  XXXXXX  XXXX  XX  XXX  XX  XXX  XX  XXX  XXXX")
   escreval("XX       XXXXXX  XXXXXX  XXXX  XX       XX       XX  XXXXX  XX")
   escreval("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")

   escreval("")
   escreval("Deseja retornar ao menu principal? SIM[1] | SAIR[2]")
   leia(opc)
   escolha opc
   caso 1
      menu
   caso 2
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
   outrocaso
      escreval("opcao invalida")
   fimescolha

fimprocedimento

procedimento menu

var
   opc : inteiro

inicio
   limpatela
   escreval("           CTHOUR - VIAGENS          ")
   escreval("*************************************")
   escreval(" ")
   escreval("Cadastrar  |  Cadastrar | Consultar  | Consultar  | Logomarca[6]")
   escreval("Cliente[1] | Destino[2] | Cliente[3] | Destino[4] | Sair[5]")
   escreval("****************************************************************")
   escreva("Escolha uma op��o -> ")
   leia(opc)
   escolha opc
   caso 1
      cadastrarCliente
      //interrompa
   caso 2
      cadastrarDestino
   caso 3
      consultaCliente
   caso 4
      consultaDestino
      //interrompa
   caso 5
      limpatela
      escreval("         Sistema encerrado........")
      escreval("Obrigado por usar a CTHOUR - VIAGENS!")
      escreval("")
   caso 6
      logomarca
   outrocaso
      escreval("opcao invalida")
      menu
   fimescolha
fimprocedimento

// ponto de partida
Inicio

   escreval("             BEM-VINDOS A        ")
   menu

Fimalgoritmo