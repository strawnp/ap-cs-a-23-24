public class Recursion {
    public static void main(String[] args) {
        for (int i = 3; i < 55; i++) {
            System.out.println(i + " - " + fibo(i));
        }
    }

    public static int fibo(int num) {
        if (num == 1) {
            return 0;
        } else if (num == 2) {
            return 1;
        } else {
            return fibo(num - 1) + fibo(num - 2);
        }
    }

    public static int factorial(int num) {
        /*
         * 5! = 5 * 4!
         * 4! = 4 * 3!
         * 3! = 3 * 2!
         * 2! = 2 * 1!
         * 1! = 1 * 0!
         * 0! = 1
         */

        // base case
        if (num == 0) {
            return 1;
        }
        // recursive case
        else {
            return num * factorial(num - 1);
        }
    }

    public static void printStars(int num) {
        // base case
        if (num == 1) {
            System.out.println("*");
        } else {
            for (int i = 0; i < num; i++) {
                System.out.print("*");
            }
            System.out.println();

            printStars(num - 1);

            for (int i = 0; i < num; i++) {
                System.out.print("*");
            }
            System.out.println();
            
        }
    }
}
