# Write a program that asks for a number of minutes and converts the result
# to hours and minutes. Don’t worry about grammar; if your output says 1
# hour and 1 minutes that’s OK. 

def time_conversion()
    puts"Please enter the number of minutes and i will work out what that is in hours and minutes for you."
    #we have to convert to an integer as the input is treated as a string with .to_i
    mins=gets.chomp.to_i
    hours = (mins/60)
    rest = (mins % 60)
    puts "#{hours} hours and #{rest} minutes" 
end

time_conversion()