package app;

import java.util.Scanner;

public class App {
    private static java.util.HashMap<String, Integer> counter(java.util.HashMap<String, Integer> myHash, String[] data) {
        int length = data.length;
        int counter = 1;

        for (int i = 0; i < length; i++) {
            if (myHash.containsKey(data[i])) {
                myHash.put(data[i], myHash.get(data[i]) + 1);
            } else {
                myHash.put(data[i], counter);
            }
        }
        return myHash;
    }

    static boolean isAnagram(String a, String b) {
        String[] aArray = a.toLowerCase().split("");
        String[] bArray = b.toLowerCase().split("");

        java.util.HashMap<String, Integer> aHash = new java.util.HashMap();
        java.util.HashMap<String, Integer> bHash = new java.util.HashMap();

        aHash = counter(aHash, aArray);
        bHash = counter(bHash, bArray);

        if (aHash.equals(bHash)) {
            return true;
        } else {
            return false;
        }
    }

    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        String a = scan.next();
        String b = scan.next();
        scan.close();
        boolean ret = isAnagram(a, b);
        System.out.println( (ret) ? "Anagrams" : "Not Anagrams" );
        

    }
}