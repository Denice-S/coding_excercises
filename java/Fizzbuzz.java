// Fizz Buzz Game in java
// Print out every number between 1 and 100 one number per line, but If the
// number is divisible by 3 print out “Fizz” ( not the number), if the number is
// divisible by five print out “Buzz” an if the number is divisible by both
// three
// and five print out “FizzBuzz”.
// You will need to use if/If else and maybe look at elsif and consider if a
// loop
// is necessary?

public class Fizzbuzz {

    private static void fizzBuzz(int num) {

        for (int i = 1; i <= num; i++) {
            if (((i % 5) == 0) && ((i % 7) == 0)) // Is it a multiple of 5 & 7?
                System.out.println("Fizzbuzz");
            else if ((i % 5) == 0) // Is it a multiple of 5?
                System.out.println("Fizz");
            else if ((i % 7) == 0) // Is it a multiple of 7?
                System.out.println("Buzz");
            else
                System.out.println(i); // Not a multiple of 5 or 7
        }
    }

    public static void main(String[] args) {
        fizzBuzz(100);

    }
}
