package app;

import java.util.HashMap;
import java.util.Map;
import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        int length = Integer.parseInt(scan.nextLine());

        Map<String, Integer> myMap = new HashMap<String, Integer>();
        for (int i=0; i<length; i++) {
            myMap.put(scan.nextLine(), Integer.parseInt(scan.nextLine()));
        }
        
        while(scan.hasNext()) {
            String key= scan.nextLine();
            if (myMap.containsKey(key)) {
                System.out.println(key+"="+myMap.get(key));
            } else {
                System.out.println("Not found");
            }

        }
    }
}