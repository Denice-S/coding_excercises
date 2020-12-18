# Print out every number between 1
# and 100 one number per line, but If
# the number is divisible by 3 print out
# “Fizz” ( not the number), if the
# number is divisible by five print out
# “Buzz” an if the number is divisible by
# both three and five print out fizz_buzz
def fizzbuzz(number)
    divisibleBy3 = (number % 3 == 0)
    divisibleBy5 = (number % 5 == 0)

    case
        when divisibleBy3 && divisibleBy5
            puts "#{number} = FizzBuzz"
        when divisibleBy3
            puts "#{number} =Fizz"
        when divisibleBy5
            puts "#{number} =Buzz"
        else 
            puts number
    end
end

(1..100).each {|n| fizzbuzz n}





    # puts "Welcome to Fizzbuzz"
    # 1.upto 100 do |i|
    # string = ""  
    # string += "Fizz" if i % 3 == 0
    # string += "Buzz" if i % 5 == 0   
    # puts "#{i} = #{string}"  
    # end

