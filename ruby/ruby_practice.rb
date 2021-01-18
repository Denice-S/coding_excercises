#little bits of ruby practice
#case statements

def day_name_conv(day)

    day_name = ""

    case day
    when "mon"
        day_name="Monday"
    when "tue"
        day_name="Tuesday"
    when "wed"
        day_name="Wednesday"
    when "thur"
        day_name="Thursday"
    when "fri"
        day_name="Friday"
    when "sat"
        day_name="Saturday"
    when "sun"
        day_name="Sunday"
    else
        day_name="invalid day abbreviation"
    end

    return day_name
end


puts day_name_conv("wed")

#while loops
index =1
 
while index <=5
    puts index
    index +=1
    
end

#for loops
pets=["Monty","Buddy","Charlie","Oscar","Echo"]

pets.each do |pet|
    puts pet

end
#or
for pet in pets
    puts pet
end


6.times do |index|
    puts index
end

#or

for index in 0..5
    puts index
end

# calculating exponentials -using a for loop to loop through however many times accoriding to the value of pow_num
def pow(base_num,pow_num)
    result =1
    pow_num.times do |index|#we are not actually using index so dont really need it here
        result = result * base_num
    end
    return result
end
#note-only works for positive numbers
puts pow(5,2)