package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        scan.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int i = scan.nextInt();

        for (int j=1; j<=10; j++) {
            System.out.printf("%d x %d = %d%n",i,j,i*j);
        }
    }
}