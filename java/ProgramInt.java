/*Write a Java program that calculates and shows the areas and
circumferences of three circles, where the radii are 3, 100, and
8.75 centimetres.*/

//I decided to use user input for this one a the code will be shorter than specifying each radius seperately and the doing the calculation.

import java.util.Scanner;

public class ProgramInt {
    // static scanner so we can use the input in every method.
    static Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.print("Enter the radius: ");
        double radius = input.nextDouble();
        // Area = PI*radius*radius
        double area = Math.PI * (radius * radius);
        System.out.println("The area of circle is: " + area);
        // Circumference = 2*PI*radius
        double circumference = Math.PI * 2 * radius;
        System.out.println("The circumference of the circle is:" + circumference);
    }
}
