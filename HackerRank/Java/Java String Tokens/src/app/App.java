package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        String s = scan.nextLine();

        if (s.trim().length() == 0) {
            System.out.println("0");
        } else {
            String[] listString = s.trim().split("[ !,?._'@]+");
            System.out.println(listString.length);
            for (String i : listString){
                System.out.println(i);
            }
        }

        scan.close();
    }
}