# Extension activity- Birthday work
# What day of the week were you born on? Do you know?
# Here's a way to find out.
# For example, if your date of birth was 6 July 1989 :
# D=6 , M=7 , and Y=1989
# If M had been a 1 or 2, subtract 1 from Y and add 12 to M.
# YF is made from the first two digits of Y and YL is made from the last two digits of Y.
# To begin, work out the sum of all the integer parts of 2.6M−5.39 , of YF4 , and of YL4
# Add D and YL into that total, and then subtract 2 lots of YF
# Divide that final answer by 7 and notice the remainder .
# A remainder value of 0 means the date was a Sunday, 1 means it was a Monday, 2 for a
# Tuesday, and so on.
# Can you follow the method (what you actually have to do) ?
# You could check some dates you happen to know the answer for ?
# When you are getting good at using the method start to ask yourself how it works and why
# does it give the right result?
# Why 2.6 and why 5.39


#define days of week $ denotes a global variable
$days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
#get user input
puts "Enter your date of birth (dd/mm/yyyy):\n"
#we are accepting this in as a string so we can split it up so we dont need .to_i
input = gets.chomp 

#split(delimiter) will break a string into an array around the character specified. in this case it is the / splitting the users inputted DOB. This creates an array in the format [dd,mm,yyyy]
date_ar = input.split("/"); 

#extract the string of the normal year like "2001" it is at array value 2
fourdigit_year_str = date_ar[2]
#extract the day and convert to integer
day = date_ar[0].to_i 
#extract the month and convert to integer
month = date_ar[1].to_i - 2 #subtract 2 from the month since years used to start in march (which this algorithm depends on)
#now we split the year uo into the first half ie century
century = fourdigit_year_str[0..1].to_i #make an int from the first half of the year string
#and the year part of the century
year = fourdigit_year_str[2..3].to_i #same thing with the second half

#We then need to adjust month and year if the month of our date is January or February as the algorithm uses years running from March to February, indexed 3 to 14

if(month <= 0) #if we've rewound the month past the first month
  month += 12 
  year -= 1 #then subtract a year
  
  if(year < 0) #if the year's gone less than 1
    year += 100
    century -= 1 #then subtract a century
  end
end
#zellers algorithm to calculate day, zellers algorithm is actually f = day + [(13*month-1)/5] + century + [cenury/4] + [year/4] - 2*Century then you take this result for f and modulo 7, the remainder indicates which day it was.
w = (13 * month - 1) / 5 
x = year / 4
y = century / 4
z = w + x + y + day + year - 2 * century 
#r gives you the remainder which you use to work out which day of the week it was.
r = z % 7
if r < 0
    r += 7
end

#The days are in an array and r is just the index of the desired day. 
week_day = $days[r];
puts "You were born on #{week_day}."