function calcularNumeroErros(pontuacao) {
    const pontuacaoMaxima = 10;
    const numeroErros = pontuacaoMaxima - pontuacao;
    return Math.round(numeroErros);
}

const pontuacaoAluno = 8.75;
const errosAluno = calcularNumeroErros(pontuacaoAluno);

console.log("O aluno cometeu", errosAluno, "erro(s).");
