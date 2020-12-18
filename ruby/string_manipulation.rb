#This is a small ruby progam that will transform text entered according to the criteria chosen.
# 1) lowercase to uppercase
# 2) capitalise a sentence
# 3) swap the case over
# 4) reverse the text

def string_manipulation()
puts "Enter some text and you can do a transformation on it:"
string=gets.chomp
puts"What would you like to do with this text .?\n 1 = Convert string to uppercase.\n 2 = Capitalise the start of your sentenc.\n 3 = Swap the case over(lowercase to uppercase and vice versa).\n 4 = Reverse the text?"
input=gets.chomp.to_i
if input== 1
    puts string.upcase
elsif input == 2
    puts string.capitalize
elsif input == 3
    puts string.swapcase
elsif input == 4
    puts string.reverse  
else
    puts "You did not enter the correct choice please try again"
    string_manipulation()

end
end

string_manipulation()
