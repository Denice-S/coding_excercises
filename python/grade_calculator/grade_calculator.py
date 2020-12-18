# Ask the user for their target grade
# and print this with their mark
# If their target grade > exam grade
# display a suitable message
# If their target grade = exam grade
# display a suitable message
# If their target grade < exam grade
# display a suitable message


name = input("Please enter student name: ")
mark = int(input(
    "Please enter the percentage marks you recieved and I will calculate your grade: "))
predicted = input("Please enter your predicted grade: ")

grades = ["A*", "A", "B", "C", "D", "E"]


def mark_grade(mark):
    if mark >= 90:
        grade = grades[0]
    elif mark >= 80:
        grade = grades[1]
    elif mark >= 60:
        grade = grades[2]
    elif mark >= 50:
        grade = grades[3]
    elif mark >= 40:
        grade = grades[4]
    else:
        grade = grades[5]

    return grade


# we are comparing the grade recieved with the grade predicted. Python compares strings lexicographically.... which means that "apple" is always less than "banana," which is less than "cherry," and so on.


grade = mark_grade(int(mark))

print(f"{name} your Grade is: " + grade)
print("Your predicted grade was : " + predicted)
if grade == predicted:
    print(f"{name} - Awesome you got your predicted grade!")
elif grade > predicted:
    # even though the comparison is more than, in pythons terms this means C is higher than B, but for us the actual comparison in the alphabet will be C is less than B - so the message to the user is that they got less because we know B comes higher.
    print(f"{name}-  you got LESS than your predicted grade. try harder next time!!")
elif grade < predicted:
    # even though the comparison is less than, in pythons tersm B is less than C but in our terms the actual comparison in the alphabet will be more than ie B is more than C, so a positive more than message is printed
    print(f"{name} - well done you got MORE than your predicted grade!!!")
else:
    print("[!] error")


# Known issues with this programme.
# 1. [Problem with A*] because we are comparing strings in the alphabet. Python considers A* to be less than A. so if my predicted grade is an A* and i get an A the message prints that i got more than my predicted grade even though i got lower.
