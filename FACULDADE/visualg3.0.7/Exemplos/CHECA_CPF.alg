//
//
Algoritmo "CHECA_CPF"
// Disciplina  : [Linguagem e L�gica de Programa��o] 
// Professor(a): Antonio Carlos Nicolodi 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Nome do(a) aluno(a) EU
// Data atual  : 27/09/2015
Var
// Se��o de Declara��es das vari�veis 
     flag,XTECLA : logico
     XMENSAGEM : caracter
     MCPF,cpf,D1,D2,XCAR,XC1,XC2 : caracter
     i,x,XCPF,CONTADOR,ACUMULA,XD1,XD2 : inteiro
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
MUDACOR("AMARELO","FRENTE")
LIMPATELA
Flag := verdadeiro
ENQUANTO FLAG FA�A
   ESCREVA("DIGITE UM CPF ou S pra sair: ")
   LEIA(CPF)
   SE CPF = "S" ENT�O
      FLAG := FALSO
      INTERROMPA
   FIMSE
   SE Compr(CPF) < 11 ENT�O
      ESCREVAL(" ")
      ESCREVAL("CPF INV�LIDO !!! - TECLE <ENTER>")
      LEIA(XTECLA)
   SEN�O
      D1 := COPIA(CPF,10,1)
      D2 := COPIA(CPF,11,1)
      MCPF := COPIA(CPF,1,9)
      ACUMULA:= 0
      CONTADOR := 2
      PARA I DE 9 AT� 1 PASSO -1 FA�A
           XCAR := COPIA(MCPF,I,1)
           XCPF := CARACPNUM(XCAR) * CONTADOR
           ACUMULA := ACUMULA + XCPF
           CONTADOR := CONTADOR + 1
      FIMPARA

      XD1 := 11 - (ACUMULA MOD 11)
      XC1 := NUMPCARAC(XD1)
      MCPF := MCPF + XC1
      ACUMULA:= 0
      CONTADOR := 2

      PARA I DE 10 AT� 1 PASSO -1 FA�A
           XCAR := COPIA(MCPF,I,1)
           XCPF := CARACPNUM(XCAR) * CONTADOR
           ACUMULA := ACUMULA + XCPF
           CONTADOR := CONTADOR + 1
      FIMPARA

      XD2 := 11 - (ACUMULA MOD 11)
      XC2 := NUMPCARAC(XD2)
      MCPF := MCPF + XC2
      
      SE (MCPF = CPF) ENT�O
         XMENSAGEM := "CPF � VERDADEIRO !!! - TECLE <ENTER>"
      SEN�O
         XMENSAGEM := "CPF N�O � VERDADEIRO !!! - TECLE <ENTER>"
      FIMSE
      ESCREVAL(" ")
      ESCREVAL(XMENSAGEM)
      LEIA(XTECLA)
   FIMSE
FIMENQUANTO

Fimalgoritmo


