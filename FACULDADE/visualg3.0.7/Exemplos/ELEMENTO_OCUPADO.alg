Algoritmo "semnome"
// Disciplina  : [Linguagem e L�gica de Programa��o]
// Professor(a): Antonio Carlos Nicolodi
// Descri��o   : Pede um valor e o elemento e coloca num VETOR
// Autor(a)    : EU MESMO !
// Data atual  : 17/09/2015
Var
   // Se��o de Declara��es das vari�veis
   Matriz : Vetor[1..10] de inteiro
   VALOR,ELEMENTO,indice : Inteiro
   RESPOSTA : caracter
   FLAG : LOGICO

PROCEDIMENTO SUBALGORITMO(VALOR, ELEMENTO: INTEIRO)
VAR OK: LOGICO
   MSG: caracter
inicio
   OK := VERDADEIRO
   MSG:= "Tudo OK !!!"
   SE ELEMENTO > 10 ENT�O
      ELEMENTO := 10
   FIMSE
   SE (MATRIZ[ELEMENTO] <> 0) ENT�O
      OK  := FALSO
      MSG := "Est� ocupado "
   FIMSE
   SE OK ENT�O
      MATRIZ[ELEMENTO] := VALOR
   FIMSE
   ESCREVAL(" ")
   ESCREVA(MSG)
   LEIA(OK)
FIMPROCEDIMENTO

//  Aqui inicia o programa

INICIO
   // Se��o de Comandos, procedimento, fun��es, operadores, etc...
   FLAG := VERDADEIRO
   PARA indice DE 1 AT� 10 FA�A
      MATRIZ[indice] := 0
   FIMPARA
   ENQUANTO FLAG FA�A
      LIMPATELA
      ESCREVAL("* VETOR *")
      ESCREVAL(" ")
      ESCREVA("VALOR: ")
      LEIA(VALOR)
      ESCREVAL(" ")
      ESCREVA("ELEMENTO: ")
      LEIA(ELEMENTO)
// ==================================================================
      SUBALGORITMO(VALOR,ELEMENTO)  // SUBALGORITMO ==> NOME SUJERIDO
      PARA indice DE 1 AT� 10 FA�A
         ESCREVAL(MATRIZ[indice])
      FIMPARA
// ==================================================================
      ESCREVAL(" ")
      ESCREVAL(" ")
      ESCREVA("Deseja continuar <S/N> ? ")
      LEIA(Resposta)
      SE (Resposta = "N") OU (Resposta = "n") ENT�O
         FLAG := Falso
      FIMSE
   FIMENQUANTO
Fimalgoritmo

