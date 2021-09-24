package app;

import java.util.LinkedList;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        LinkedList<Integer> myList = new LinkedList<>();

        int length = scan.nextInt();
        for (int i=0; i<length; i++) {
            myList.add(scan.nextInt());
        }

        int tryLength = scan.nextInt();
        for (int j=0; j<tryLength; j++) {
            String test = scan.next();
            if (test.equals("Insert")) {
                myList.add(scan.nextInt(), scan.nextInt());
            } else {
                myList.remove(scan.nextInt());
            }
        }
        for (int data : myList) {
            System.out.print(data+" ");
        }
        scan.close();
    }
}