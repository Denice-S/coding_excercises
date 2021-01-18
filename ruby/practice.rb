#write a program that outputs more than 1 line of code:
puts "Hello World" "\n" "I am learning ruby"
#write a ruby program which will print your name, age and address all on seperate lines
puts "Input your first name"
name=gets.chomp
puts"Input your last  name"
lastName=gets.chomp
puts"Input your age"
age=gets.chomp
puts"What is your address?"
address=gets.chomp
puts "Name- #{name} #{lastName}." "\n" "Age - #{age} years old." "\n" "Address- #{address} ."
#and this line just concatenates it all
puts "#{name} #{lastName}, #{age} years old, and lives at:  #{address}"

#5. Write a Ruby program which accept the
#user's first and last name and print them in
#reverse order with a space between them 
puts "Input your first name"
name=gets.chomp
puts"Input your last  name"
lastName=gets.chomp
puts "#{lastName} #{name}"