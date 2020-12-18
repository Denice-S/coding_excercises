/*
 * Write a Java program that calculates and shows the areas and circumferences
 * of three circles, where the radii are 3, 100, and 8.75 centimetres.
 */
public class Circles {

    static void calculate(double radius) {
        /*
         * take the input radius and print our a statement whilst doing the calculation
         * as well for area and circumference in one line.
         */
        System.out.println("Radius is " + radius + " " + "Circumference is = " + (2 * radius * Math.PI));
        System.out.println("Radius is " + radius + " " + "Area is = " + (Math.PI * radius * radius));
    }

    public static void main(String[] args) {
        // call the method in here passing the radius parameters for each one.
        calculate(3);
        calculate(100);
        calculate(8.75);
    }
}
