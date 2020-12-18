import math

def calculator():

    while True:
        try:
            num1=int(input("Enter the first number : "))
            num2=int(input ("Enter the second number : "))
        except:
            print("Please enter a number")
        else:
            break

    operator=input("What do you want to do with these numbers?, please enter a choice...Enter - \"a\" for add, \"b\" for subtract, \"c\" for divide, \"d\" for multiply,\"e\" for exponential( first number to the power of the second) , \"f\" for squared (each number squared), \"g\" for Square Root (square root of each number): ")

    if operator =="a":
        print(f"{num1} + {num2} = {num1 + num2}")
    elif operator =="b":
        print(f"{num1} -{num2} = {num1- num2}")
    elif operator=="c":
         print(f"{num1} / {num2} = {num1 / num2}")
    elif operator=="d":
        print(f"{num1} * {num2} = {num1 * num2}")
    elif operator=="e":
        print(f"{num1} to the power of {num2} = {num1 ** num2}")
    elif operator=="f":
        print(f"{num1} squared = {num1*num1} and {num2} squared = {num2 * num2}")
    elif operator=="g":
        print(f"Square root of {num1} = {math.sqrt(num1)} , square root of {num2} = {math.sqrt(num2)}")
    else:
        print("You did not enter the correct option, please try again")
        calculator()

    recalc()

def recalc():

    calc_again = input("Do you want to calculate again? Please type Y for YES or N for NO.")
    if calc_again.upper() == 'Y':
        calculator()
    elif calc_again.upper() == 'N':
        print('*********Thanks for using the calculator , See you later.*******')   
    else:
        recalc()

def welcome():
    print("""***********************************************************
              WELCOME TO THE CALCULATOR
***********************************************************""")

welcome()
calculator ()