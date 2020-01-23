package app;

import java.util.ArrayList;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        int totalInput = scan.nextInt();
        ArrayList<ArrayList<Integer>> myArrayList = new ArrayList<ArrayList<Integer>>();

        for (int i = 0; i < totalInput; i++) {
            ArrayList<Integer> row = new ArrayList<Integer>();
            int rowLength = scan.nextInt();
            for (int j = 0; j < rowLength; j++) {
                row.add(scan.nextInt());
            }
            myArrayList.add(row);
        }

        int test = scan.nextInt();
        for (int k = 0; k < test; k++) {
            int x = scan.nextInt(); 
            int y = scan.nextInt();
            try {
                System.out.println(myArrayList.get(x-1).get(y-1));
            } catch (IndexOutOfBoundsException e) {
                System.out.println("ERROR!");
            }
        }
        
        scan.close();
    }

}