// Create a java program to output a hollow
// square or asterisk.
//a) Use multiple System.out.println statements,
// create a java program to output a hollow 5 by
// 5 square with X or asterisk (*).
// b) Use loops instead of multiple println
// statements.

public class Square {
    // define method printSquare and input number of rown and columns
    static void printSquare(int width, int height) {
        // For rows or width run the outer loop from 1 to 6-this means it will print 1-5
        // stars.
        for (int i = 1; i < 6; i++) {
            // inner loop for columns or height.
            for (int j = 1; j < 6; j++) {
                /*
                 * Inside inner loop print star for first and last row or for first and last
                 * column. Which is print star * plus a space for formatting nicely.
                 */
                if (i == 1 || i == width || j == 1 || j == height)
                    System.out.print("* ");

                // otherwise print space:(this is 2 blank spaces so it is formatted nicely as a
                // square)
                else
                    System.out.print("  ");
            }
            /*
             * After printing all columns of a row, print a blank line after inner loop. if
             * i dont have this line, all the stars print on the one line like so :(******
             * ** ** ******)
             */

            System.out.println();
        }
        ;

    };

    public static void main(String[] args) {
        printSquare(5, 5);
        // or doing it wihout a loop and a series of println statements formatted for a
        // square
        System.out.println(" * * * * *");
        System.out.println(" *       *");
        System.out.println(" *       *");
        System.out.println(" *       *");
        System.out.println(" * * * * *");
    }

};
