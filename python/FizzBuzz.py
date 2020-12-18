#
# Fizz Buzz Game in python
# print out every number between 1 and 100 one number per line, but If the
# number is divisible by 3 print out “Fizz” (not the number), if the number is
# divisible by five print out “Buzz” an if the number is divisible by both
# three
# and five print out “FizzBuzz”.
# You will need to use if/If else and maybe look at elsif and consider if a
# loop
# is necessary?
import math

for i in range(1, 101):
    if i % 3 == 0 and i % 5 == 0:
        print('FizzBuzz')
    elif i % 3 == 0:
        print('Fizz')
    elif i % 5 == 0:
        print('Buzz')
    else:
        print(str(i))
