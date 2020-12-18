# This is a program that asks the user to input a password and checks the strength of that password

# we are inporting getpass so we can hide the password from being echoed back on screen as nobody should be seeing passwords
import getpass
# we are importing re so we can use regular expressions to search passwords for certain conditions
import re
# grab the users username- because its always nice to print a personal message!!
username = input("Please enter a username: ")

# get_password function asks the user for a password, asks them to confirm it and then checks if the password meets basic rules on length and if both passwords match, and that they dont contain all digits. It then returns the password value which is used in the password_strengh function.


def get_password():
    password = getpass.getpass("Please enter a password: ")
    password_confirm = getpass.getpass("Please confirm your password: ")
    if len(password) < 8 or len(password) > 12:
        print("[!] Password must be between 8 and 12 characters, please try again")
        get_password()
    elif password.isdigit():
        print("[!] The password cannot only be numbers. Please try again")
        get_password()
    elif password == password_confirm:
        return password
    else:
        print("[!] Passwords dont match")
        get_password()

# we now check for the strength of the password with the password_strength function based on several regular expression conditions.


def password_strength(password):
    if re.search('(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@!#$%&-])', password):
        # ?= is a positive lookahead ,positive lookahead asserts that the expression ie-[A-Z] can be matched and the .* is saying somewhere in the password there should be an a-z,and  a-z can be matched, 0-9 can be matched and special characters can be matched.
        print(f"{username} your password is a very strong password")
    elif re.search('(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])', password):
        print(f"{username} your password is strong,")
    elif re.search('(?=.*[A-Z])(?=.*[a-z])', password):
        print(f"{username} your password is medium strength,")
    elif re.search('(?=.*[a-z])', password):
        print(f"[!] {username} Your password is weak ")


password = get_password()
password_strength(password)


# Noted limitations or improvements of this program
# 1.We need more conditions, for example a password of @w3s0m399 is considered weak because it has no capitals.
