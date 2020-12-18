# Write a Ruby program to convert a string in
# to an integer and then perform any
# mathematical equation with it.

def string_to_integer()
    #grab the users input as a string
    puts "Please Enter any number"
    #convert the input to an integer
    number=gets.chomp.to_i
    #ask what mathematical oeration they would like to do with it
    puts "What would you like to do with this number? \n 1= Double it \n 2= * by itself\n 3= Halve it \n 4= Find the square root"
    input =gets.chomp.to_i
    if input ==1
        puts "#{number} doubled is #{number + number}"
    elsif input ==2
        puts "#{number} * by itself is #{number*number}"
    elsif input ==3
        #halving - ie divinding by 2 can sometimes not return a whole integer so we convert number to a float in our puts statement so that the division can be more accurate.
        puts "#{number} halved is #{number.to_f/2}"
    elsif input ==4
        puts "The Square root of #{number} is #{Math.sqrt(number)}"
    else 
        puts"You did not enter a correct response, please try again"
        string_to_integer()
    end
   
        
end

string_to_integer()