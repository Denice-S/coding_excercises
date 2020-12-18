
// Write Java program for user to choose his/her own
// username and password. Rules for choosing valid
// username and
// password are:
// 1) A username must be of length 6-15 characters.
// 2) Username must start with an Uppercase english alphabet character. A
// 3)password must not
// be shorter than 8 characters and largers that 256
// characters. 4) There cannot be any types of
// whitespaces/parentheses
// in a valid username/password. 5) A password cannot be
// the same as the username.
import java.util.Scanner;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Password {

    public static void main(String[] args) {
        System.out.print("Please Enter a username: ");
        Scanner user = new Scanner(System.in);
        String username = user.nextLine();
        System.out.print("Please Enter a password: ");
        Scanner pwd = new Scanner(System.in);
        String password = pwd.nextLine();
        /*
         * define a pattern for the regex, in this case we are matching only a-z and 0-9
         * so if the password contains any special characters such as parentheses or
         * whitespace it will not be valid .
         */
        Pattern pattern = Pattern.compile("[^a-zA-Z0-9]");
        // define the matcher and string to match
        Matcher matcher = pattern.matcher(password);
        boolean isStringContainsSpecialCharacter = matcher.find();

        if (username.length() < 8 || username.length() > 15) {
            System.out.print("A Username must be between 8 and 15 characters and must start with a Capital: ");

        } else if (!Character.isUpperCase(username.charAt(0))) {
            System.out.print("A Username must be between 8 and 15 characters and must start with a Capital: ");

        } else if (password.equals(username)) {
            System.out.print("Password cannot be the same as username: ");
        } else if (password.length() < 8 || password.length() > 256) {
            System.out.print("Password must be between 8 and 256 characters: ");
            // } else if (password.contains(" ")) {
            // System.out.print("Password cannot contain whitespace: ");
        } else if (isStringContainsSpecialCharacter)
            System.out.println("Password cannot contain parentheses or whitespace");
        else
            // confirm if the password is valid, we are also repeating back the username and
            // password.
            System.out.println("You have a valid username and password");

    }
}

/*
 * improvements to consider: 1. we dont re run the program if the user enters an
 * incorrect value, this requires them to start the program all over again so
 * this needs addressing 2. Passwords are not normally typed so you cant see
 * them so this needs to be hidden really. 3. The regex is all encompassing in
 * terms of special characters and could be narrowed down to only target
 * parentheses and whitespace as we might consider that we will allow other
 * special characters.
 */
