# Additional practise
# Write a Ruby program to count the number of words in a sentence.
# The user enters a sentence.
# The program responds with the number of words in a sentence.
# HINT
# Look for spaces and full stops in a string.
# EXTENSION
# Develop a program that will display a sentence backwards after
# entered.

def get_count() 
    puts"Enter your message and i will count the words"
    message=gets.chomp
    #this splits the words up based on whitespace
    count=message.split(' ').length
    puts "you have #{count} words"
end
get_count()

def reverse_string()
    puts "Enter your message and i will reverse it."
    message=gets.chomp
    #this splits the words out based on whitespace , reverses their order and joins them back again in a string
    puts message.split.reverse.join(" ")
end

reverse_string()