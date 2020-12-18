
// A carpenter installs window units and wants a program
// which will calculate the amounts of wood and glass that
// need to be purchased. He/she wants to just enter the
// dimensions of the window (in meters) and then get a
// display of the amount of wood and glass required. Whilst
// glass is sold by the square meter, the wood supplier sells
// by the foot, so the amount of wood required must be
// given in feet and inches. The wood window frame is 1
// inch thick. Furthermore, the width of the window must
// be between 0.5 and 3.5m inclusive and the height is
// constrained between 0.5 and 2.0 meters inclusive. Note
// that 1 meter = 3.281 feet and there are 12 inches in a
// foot.
// Write a java solution which fulfils as much of the
// requirements as possible.

import java.util.Scanner;
import java.text.DecimalFormat;

public class Carpenter {

    // feet in a meter
    double feet = 3.281;
    // inches in a foot
    double inches = 12;
    // work out what 1 inch is in meters to account for the frame being 1 inch thick
    double frame = 0.0254;

    public static void calculate() {

        // capture user input for height and width
        Scanner input = new Scanner(System.in);
        System.out.print("******Welcome to the Calculator*******\n Please Enter the Widows Width: ");
        double width = input.nextDouble();
        System.out.print("Please Enter the Widows height: ");
        double height = input.nextDouble();
        // frame is 1 inch thick so i inch in meters is:
        double frame = 0.0254;
        DecimalFormat df = new DecimalFormat("###.##");

        if (width >= 0.5 && width <= 3.5 && height >= 0.5 && height <= 2) {
            // all doubles are in meters
            // work out how much glass needed for area and take off 4 lots of the frame....
            double glass = (width * height) - (4 * frame);
            // convert height and width to feet
            double woodHeight = (height * 3.281);
            double woodWidth = (width * 3.281);
            double woodReq = ((woodHeight * 2) + (woodWidth * 2));
            // split the decimal feet returned by woodReqFt so we can work out the inches..
            int woodReqFeet = (int) woodReq;
            double woodReqInch = (woodReq - woodReqFeet);
            // calculate inches
            double inches = (woodReqInch * 12);
            int woodNeeded = (int) inches;

            System.out.println("Glass required = " + df.format(glass) + " Meters");
            System.out.println("Wood required = " + df.format(woodReqFeet) + " Ft " + woodNeeded + " inches.");
        } else
            System.out.println(
                    "You have not entered the correct measurements,\n width of the window must be between 0.5 and 3.5m inclusive\n height is constrained between 0.5 and 2.0 meters");

        again();

    }

    // declared another method as a way of calling the program again if a user puts
    // wrong things into the input and just to save the user doing this again.
    public static void again() {
        Scanner input = new Scanner(System.in);
        System.out.println("Do you want to enter the Width and Height again?");
        String response = input.nextLine();
        if (response.equals("Y") || response.equals("y")) {
            calculate();
        } else
            System.out.println("Thanks for using the window calculator");

    }

    public static void main(String[] args) {
        calculate();
    }
}