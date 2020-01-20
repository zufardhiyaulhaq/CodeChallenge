package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        String a = scan.nextLine();
        String b = scan.nextLine();
        
        System.out.println(a.length()+b.length());
        if (a.compareTo(b) > 0) {
            System.out.println("Yes");
        } else {
            System.out.println("No");
        }
        System.out.printf("%s %s",a.substring(0, 1).toUpperCase()+a.substring(1),b.substring(0, 1).toUpperCase()+b.substring(1));

    }
}