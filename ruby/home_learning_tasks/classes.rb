# 1. Write a Ruby program to create your
# own class and then run it.

class Reindeer 
  # initialize method with all your variables/descriptions and attr_accessor so we can access variables outside
  attr_accessor :speed, :name,:nose_color, :color, :id
  def initialize(id, name,color, nose_color,speed) 
  @id = id 
  @name =name
  @color = color 
  @nose_color = nose_color
  @speed=speed
  end
  #i have this line below because i want to access theese variables from outside the class and whilst objects generated from the class.new can get access to all the functions/methods in a class they dont implicitly have access to the variables. so without the below i could just call rudolph.nose_color as we dont have direct access with out it.
  # attr_reader :speed, :name,:nose_color, :color, :id

  def describe()
      #describes the reindeer
    puts "#@name has a #@nose_color nose and is a #@color colored reindeer."
  end

    def pull_sleigh()
      #determines who goes where to pull the sleigh
    if speed > 180
     puts"You must be Rudolph! you have a #{nose_color} nose and are the fastest reindeer - You go at the front of Santas sleigh!"
    elsif speed >120 && speed < 180
      puts"You are fast reindeer! ..you go in the middle of the sleigh"
    elsif 
      puts "You are a slow reindeer! ..you go at the back of the sleigh"
    end
  end
  end
  
  rudolph=Reindeer.new(1,"Rudolph","Brown","Red",200)
  dasher=Reindeer.new(2,"Dasher", "dark brown", "black", 180)
  dancer=Reindeer.new(3, "Dancer","brown", "brown",160)
  prancer=Reindeer.new(4, "Prancer","white", "brown", 150)
  vixen=Reindeer.new(5,"Vixen","black","black",145)
  comet=Reindeer.new(6,"Comet","light brown","brown",120)
  cupid=Reindeer.new(7,"Cupid","brown","pink",115)
  donner=Reindeer.new(8,"Donner","brown","black",100)
  blitzen=Reindeer.new(9,"Blitzen","light brown","black",80)

puts"--------------------------------------------"
  cupid.describe
  cupid.pull_sleigh
  puts"--------------------------------------------"
  rudolph.describe
  rudolph.pull_sleigh
  puts"--------------------------------------------"
  blitzen.describe
  blitzen.pull_sleigh
  puts"--------------------------------------------"
  donner.describe
  donner.pull_sleigh
  puts"--------------------------------------------"
  comet.describe
  comet.pull_sleigh
  puts"--------------------------------------------"
  vixen.describe
  vixen.pull_sleigh
  puts"--------------------------------------------"
  prancer.describe
  prancer.pull_sleigh
  puts"--------------------------------------------"
  dancer.describe
  dancer.pull_sleigh
  puts"--------------------------------------------"
  dasher.describe
  dasher.pull_sleigh
  puts"--------------------------------------------"
#we can just access the variables for the class reindeer by using the attr_reader we defined in our class, so now i can just ask for rudolphs nose color or dancers speed as below.
  puts rudolph.nose_color
  puts cupid.nose_color
  puts dasher.color
  puts dancer.speed
  puts comet.nose_color