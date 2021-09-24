package app;

import java.util.Scanner;

public class App {
    public static String getSmallestAndLargest(String s, int k) {
        // String smallest = "";
        // String largest = "";
        // int length = s.length();

        // ArrayList<String> dataList = new ArrayList<String>();
        // for (int i=0; i<length-k+1; i++) {
        //     dataList.add(s.substring(i, i+k));
        // }
        
        // Collections.sort(dataList);
        // smallest = dataList.get(0);
        // largest = dataList.get(dataList.size()-1);
        // return smallest + "\n" + largest;

        String smallest = s.substring(0,k);
        String largest = s.substring(0,k);
        int length = s.length();
            
        for (int i=0; i<=length-k; i++) {

            String forCompare = s.substring(i,i+k);
            if (smallest.compareTo(forCompare ) > 0) {
                smallest = forCompare;
            }

            if (largest.compareTo(s.substring(i,i+k)) <= 0) {
                largest = forCompare;
            }

        }
        return smallest + "\n" + largest;
    }


    public static void main(String[] args) {
        Scanner scan = new Scanner(System.in);
        String s = scan.next();
        int k = scan.nextInt();
        scan.close();
      
        System.out.println(getSmallestAndLargest(s, k));
    }
}