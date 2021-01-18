lucky_nums=[7,34,2,9,76,28]
#catch potential errors with a begin rescue. you can store the error in a variable using => and then print this as it is more meaningful
begin
    lucky_nums["dog]"]
rescue => exception
    puts exception
    
end
#try and be implicit about the erro you catch as this is more meningful than just using rescue which will catch all errors but doesnt tell you much.