# Write a Ruby program to
# remove a character from
# a given string if it starts
# with that specified
# character
#i have chose to remove h if  a sring starts with a h
puts"Enter your message"
message=gets.chomp
 if message.start_with?("h")
    message.sub!('h', '')
 end
 puts "#{message}"

# Write a Ruby program to
# check whether a string
# starts with an other
# string.
puts "Enter your message"
message=gets.chomp
if message.start_with?("hello")
    puts"your message starts with - hello"
end

# 1. Write a Ruby program to create a new
# string where "if" is added to the front of a
# given string. If the string already begins with
# "if", return the string unchanged.
puts"Enter your message"
string=gets.chomp
if string.start_with?("if")
    puts"#{string}"
else
    puts"if" + "#{string}"
end
