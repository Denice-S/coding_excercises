
// Write a program to input numbers via
// keyboard; each number separated by an
// enter.
// The user can choose to enter any number of
// numbers up to a maximum of 999 numbers.
// When user wants to stop entering numbers,
// the user enters 0. Once 0 is entered, an
// average of all the numbers
// entered by the user is calculated and
// displayed on the screen.

import java.util.Scanner;
import java.util.ArrayList;

public class Numbers {
    static void average() {
        ArrayList<Integer> numbers = new ArrayList<Integer>();
        System.out.print("Please Enter a number: ");
        Scanner input = new Scanner(System.in);
        int num = input.nextInt();
        double sum = 0;

        while (num != 0) {

            numbers.add(num);
            // System.out.println(numbers);
            sum += num;
            // System.out.println(sum);
            System.out.print("Please Enter a number: ");
            num = input.nextInt();
        }

        double average = (sum / numbers.size());

        System.out.println("The average of your numbers is " + average);

    }

    public static void main(String[] args) {
        average();
    }
}
