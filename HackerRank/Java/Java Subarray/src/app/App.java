package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        int len = Integer.parseInt(scan.nextLine());

        int[] arr= new int[len];
        for(int i=0;i<len;i++){
            arr[i]=scan.nextInt();
        }
        int count = 0;
        int sum = 0;

        for(int i=0; i<len; i++) {
            for (int j=i; j<len; j++) {
                sum += arr[j];
                if (sum < 0) {
                    count += 1;
                }
            }
            sum = 0;
        }
        System.out.println(count);   
    }
}