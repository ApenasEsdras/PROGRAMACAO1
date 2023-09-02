public class ProbabilidadeSorteio {
    public static void main(String[] args) {
        int torcedoresPalmeiras = 7;
        int torcedoresCorinthians = 9;
        int torcedoresSantos = 3;
        int torcedoresSaoPaulo = 6;
        
        int totalTorcedores = torcedoresPalmeiras + torcedoresCorinthians + torcedoresSantos + torcedoresSaoPaulo;
        
        double probabilidade = calcularProbabilidade(totalTorcedores, torcedoresPalmeiras);
        
        System.out.println("A probabilidade de sortear três crianças torcedoras do mesmo time é aproximadamente: " + (probabilidade * 100) + "%");
    }
    
    public static double calcularProbabilidade(int totalTorcedores, int torcedoresTime) {
        int numeroDeSorteios = 3;
        
        // Calcular o número de maneiras de escolher 3 crianças torcedoras do mesmo time
        int numerador = combinatoria(torcedoresTime, numeroDeSorteios);
        
        // Calcular o número total de maneiras de escolher 3 crianças de todas as torcidas
        int denominador = combinatoria(totalTorcedores, numeroDeSorteios);
        
        // Calcular a probabilidade
        double probabilidade = (double) numerador / denominador;
        
        return probabilidade;
    }
    
    public static int combinatoria(int n, int r) {
        return fatorial(n) / (fatorial(r) * fatorial(n - r));
    }
    
    public static int fatorial(int n) {
        if (n == 0 || n == 1) {
            return 1;
        }
        return n * fatorial(n - 1);
    }
}
