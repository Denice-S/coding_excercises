# This is a function that determines if a word entered is a palindrome or not.

#  we grab the input word
word = input("Enter a word and i will tell you if it is a Palindrome!: ")
# we reverse the word so we can compare them to see if they are the same backwards and forwards.
word_rev = reversed(word.lower())

# we have a case issue here ie- Hannah is not the same as hannah, we need to shunt both word and word_rev to lowercase to compare properly. we have to use the lower() function to do this, and i have to apply it to word_rev above as it is reversed. And i apply it to word below in the function ( i cannnot apply it to word_rev in the function as it is an iterator when it is reversed and not a string and lower can only be applied to a string.)


def is_palindrome(word):
    if list(word.lower()) == list(word_rev):
        print(f"True, the word -  {word} is a palindrome")
    else:
        print(f"False! sorry but {word} is not a palindrome!")


is_palindrome(word)
