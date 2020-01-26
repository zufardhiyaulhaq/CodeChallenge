package app;

import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.Set;

public class App {
    public static void main(String[] args) throws Exception {
        // Scanner scan = new Scanner(System.in);
        // int length = Integer.parseInt(scan.nextLine());

        // Set mySet = new HashSet();
        // for (int i=0; i<length; i++) {
        //     mySet.add(scan.nextLine());
        //     System.out.println(mySet.size());
        // }

        Scanner s = new Scanner(System.in);
        int t = s.nextInt();
        String [] pair_left = new String[t];
        String [] pair_right = new String[t];
        
        for (int i = 0; i < t; i++) {
            pair_left[i] = s.next();
            pair_right[i] = s.next();
        }

        Set<List> mySet = new HashSet<List>();
        for (int i = 0; i < t; i++) {
            mySet.add(Arrays.asList(pair_left[i],pair_right[i]));
            System.out.println(mySet.size());
        }

    }
}