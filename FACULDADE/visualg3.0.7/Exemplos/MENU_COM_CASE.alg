Algoritmo "TESTA_CASO"
// Disciplina  : [Linguagem e L�gica de Programa��o]
// Professor(a): Antonio Carlos Nicolodi
// Descri��o   : Programa usado para testar ESCOLHA .. FA�A .. CASO .. OUTROCASO .. FIMESCOLHA
//             : PARA QUE FUNCIONE USE COM VARI�VEIS DO TIPO "CARACTER" NA OP��O.
// Autor(a)    : TODOS OS ALUNOS DO BRASIL E DO MUNDO...
// Data atual  : 18/08/2015
Var
   // Se��o de Declara��es das vari�veis
   opcao : Caracter   // Op��o de escolha
   X,FLAG: LOGICO     // vari�veis de controle
Procedimento Inclusao
Inicio
   Escreval("Inclus�o")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Consulta
Inicio
   Escreval("Consulta")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Exclusao
Inicio
   Escreval("Exclus�o")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento

Procedimento Alterar
Inicio
   Escreval("Alterar")
   Escreva("tecle <enter>")
   LEIA(X)
FimProcedimento


Inicio
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
X := VERDADEIRO
FLAG <- X
ENQUANTO FLAG FA�A
   X := VERDADEIRO
   MUDACOR("Amarelo","FRENTE")
//   MUDACOR("Azul","FUNDOS")
   limpatela
   Escreval("*** Menu ***")
   Escreval("1 - Inclus�o")
   Escreval("2 - Consulta")
   Escreval("3 - Exclus�o")
   Escreval("4 - Alterar ")
   Escreval("5 - Finaliza")
   Escreval("  ")
   Escreva("Digite a op��o:")
   Leia(opcao)
   Escolha opcao
   Caso "1"
      Inclusao    // chama o procedimento
   Caso "2"
      Consulta    // chama o procedimento
   Caso "3"
      Exclusao    // chama o procedimento
   Caso "4"
      Alterar     // chama o procedimento
   Caso "5"
      FLAG := FALSO   // muda a vari�vel do controle para encerrar o loop

   OUTROCASO      // caso a vari�vel tenha algum valor acima de 5 ou abaixo de 1  
      Escreval("Op��o inv�lida")
      Escreva("tecle <enter>")
      LEIA(X)
   Fimescolha
   
FIMENQUANTO

Fimalgoritmo