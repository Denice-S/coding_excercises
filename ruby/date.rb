require 'date'

#write a program to show the curent date and time: we need to  require date at the top of the file
x = DateTime.now
y=Time.now
puts "The current date is #{x.day} #{x.month} #{x.year}"
puts "The current time is #{y.hour}:#{y.min}:#{y.sec}"