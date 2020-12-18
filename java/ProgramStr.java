/*Write a Java program that prompts for two text messages
from the user via keyboard, connects them together, and
prints the result on screen.*/

import java.util.Scanner;

public class ProgramStr {
    public static void main(String[] args) {
        Scanner input1 = new Scanner(System.in);
        System.out.print("Please Enter a word ");
        String word1 = input1.next();
        Scanner input2 = new Scanner(System.in);
        System.out.print("Please Enter another  word ");
        String word2 = input2.next();
        System.out.println(word1 + " " + word2);
    }
}
