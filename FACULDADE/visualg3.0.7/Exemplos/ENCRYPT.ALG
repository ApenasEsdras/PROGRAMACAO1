Algoritmo "Encrypt"
// Disciplina : [Linguagem e L�gica de Programa��o]
// Professor : Antonio Carlos Nicolodi
// Descri��o : Encripta e Descripta uma palavra com n caracteres (4)
// Autor(a) : Nome do(a) aluno(a)
// Data atual : 03/12/2018
Var
// Se��o de Declara��es das vari�veis
Y : inteiro
XP, XQ, XA: CARACTER

FUN��O CRIPTO(XXP:CARACTER;XY:INTEIRO):CARACTER
VAR
XX,YY : INTEIRO
XV,XL,XK : CARACTER
INICIO

XV <- NUMPCARAC(XY)
PARA YY DE 1 AT� COMPR(XXP) FA�A
XL <- COPIA(XXP,YY,1)
PARA XX DE 0 AT� 25 FA�A
SE XL = CARAC(XX+65) ENT�O
XK <- CARAC(XX+65+(XY-1))
XV <- XV + XK
FIMSE
FIMPARA
FIMPARA
RETORNE XV
FIMFUN��O

FUN��O DESCRIPTO(XXP:CARACTER;XY:INTEIRO):CARACTER
VAR
XX,YY : INTEIRO
XV,XL,XK : CARACTER
INICIO

XV <- NUMPCARAC(XY)
PARA YY DE 1 AT� COMPR(XXP) FA�A
XL <- COPIA(XXP,YY,1)
PARA XX DE 0 AT� 25 FA�A
SE XL = CARAC(XX+65) ENT�O
XK <- CARAC(XX+65-(XY-1))
XV <- XV + XK
FIMSE
FIMPARA
FIMPARA
RETORNE XV
FIMFUN��O

Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc...
ESCREVAL("*** CRIPTOGRAFAR ***")
ESCREVAL
ESCREVA("PALAVRA : ")
LEIA(XP)
xp <- Maiusc(XP)
XQ <- CRIPTO(XP,4)
ESCREVAL
ESCREVAl("CRIPTO := ",XQ)
XA <- DESCRIPTO(XQ,4)
ESCREVAL
ESCREVAl("DESCRIPTO := ",XA)

Fimalgoritmo

