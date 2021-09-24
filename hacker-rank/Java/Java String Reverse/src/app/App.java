package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        String A = scan.nextLine();

        StringBuilder sb = new StringBuilder(A);

        if (sb.reverse().toString().equals(A)) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
    }
}