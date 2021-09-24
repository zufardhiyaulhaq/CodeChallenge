package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        int loop = scan.nextInt();

        for (int i=0; i<loop; i++) {
            int a = scan.nextInt();
            int b = scan.nextInt();
            int n = scan.nextInt();

            for (int j=0; j<n; j++) {
                a = a + (int)Math.pow(2,j) * b;
                System.out.printf("%d ",a);
            }

            System.out.println("");
        }
    }
}