Algoritmo "semnome"
// Disciplina: [Linguagem e L�gica de programa�ao] 
// Fun��o : Demonstrar o uso do comento ESCOLHA (sem a clausula ATE nas listas)
// Autor :
// Data : 16/11/2002
// Se��o de Declara��es 
var time : caracter
inicio
// Se��o de Comandos 
escreva("Entre com o nome de um time de futebol:")
leia(time)
escolha time
caso "Fluminense", "Flamengo", "Vasco", "Botafogo"
   escreva("� um time carioca.")
caso "S�o Paulo", "Palmeiras", "Santos", "Cor�nthians"
   escreva("� um time paulista.")
outrocaso
   escreva("� de outro estado.")
fimescolha
fimalgoritmo
