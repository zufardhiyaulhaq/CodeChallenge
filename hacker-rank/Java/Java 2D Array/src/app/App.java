package app;

import java.util.Scanner;

public class App {
    public static void main(String[] args) throws Exception {
        Scanner scan = new Scanner(System.in);
        scan.skip("(\r\n|[\n\r\u2028\u2029\u0085])?");

        int[][] arr = new int[6][6];

        for (int i=0; i<6; i++) {
            String[] temp = scan.nextLine().split(" ");
            for (int j=0; j<6; j++) {
                arr[i][j] = Integer.parseInt(temp[j]);
            }
        }

        System.out.println(getHourglass(arr));
        scan.close();
    }

    static int getHourglass(int[][] arr) {
        int max = arr[1][1]+arr[0][0]+arr[0][1]+arr[0][2]+arr[2][0]+arr[2][1]+arr[2][2];
        for (int i=1; i<5; i++) {
            for (int j=1; j<5; j++) {
                int hourglass = arr[i][j]+arr[i-1][j-1]+arr[i-1][j]+arr[i-1][j+1]+arr[i+1][j-1]+arr[i+1][j]+arr[i+1][j+1];

                if (hourglass > max) {
                    max = hourglass;
                }
            }
        }
        return max;
    }
}