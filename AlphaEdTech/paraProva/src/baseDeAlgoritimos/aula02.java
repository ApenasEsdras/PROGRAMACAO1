package baseDeAlgoritimos;

import java.util.Scanner;

public class aula02 {

    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            int a, b = 0, c = 0, d;

            while (true) {
                System.out.print("Digite o valor de a (-1 para sair): ");
                a = scanner.nextInt();
                System.out.println(a);

                if (a == -1) {
                    if (b != 0) {
                        d = c / b;
                        System.out.println("Valor de d: " + d);
                    } else {
                        System.out.println("Divisão por zero não é possível.");
                    }
                    break; // Sai do loop quando a é igual a -1
                } else {
                    b++;
                    c += a;
                }
            }
        }
    }
}
