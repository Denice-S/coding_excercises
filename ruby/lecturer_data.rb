# Paul Barry ->Programming,Networking,Security,Open Source, Frameworks.
# Chris Meudec-> Testing, Safety Systems, Formal Systems, Programmming languages.
# Nigel Whyte -> Graphics, Imaging, programming, Sign language, Trees.
# Austin Kinsella ->Networks,WAN's, Programming, Macintosh,Digital photography.
# Gerry Moloney -> placement, employment, emerging systems, web development.



# 1. Write a ruby data structure to hold this data and then use this data structure to display the 2nd and 4th area of interest for each lecturer.
# once you have program 1 writte use the data structure  in the following: array to store this data
lecturers =[
  ['Paul Barry',['programming','Networking','Security','Open Source','Frameworks']],
   ["Chris Meudec",["Testing","Safety Systems", "Formal Systems", "programmming languages"]],
   ["Nigel Whyte",[ "Graphics", "Imaging", "programming", "Sign language", "Trees."]],
   ["Austin Kinsella",["Networks,WAN's", "programming", "Macintosh","Digital photography."]],
   ["Gerry Moloney",["placement", "employment", "emerging systems", "web development"]],
  ]
#code to display the 2nd and 4th interest/subject for each lecturer
lecturers.each {|data| puts "Name is #{data[0]}, second subject is :#{data[1][1]}fourth subject is: #{ data[1][3]}"}

  puts"---------------------------------------"
# 2. write a program to display each lecturers final area of #interest

lecturers.each {|data| puts "Name is #{data[0]}, final subject is #{ data[1][-1]}"}
puts"---------------------------------------"
# 3. write a program to display each lecturers name together with the number of areas of interest that they have
lecturers.each{|data| jam=(data[1].count)
  puts "Name is #{data[0]}, number of areas of interests is: #{jam}"}
puts"---------------------------------------"
# 4. write a program to replace the area of interest "programming" in each lecturers list with the words "software engineering". print out the entire list once the change has accured.make sure your code changes the  data withing the data structure

#because i have a nested array, the actual interest are stored 3 layers deep (for the first lecturer that is array[0][0][1]= index 0-first array in the array, index 0 is their name and then index 1 is the list of interests.) so we have to get down to that level to be able to do stuff with changing the elements:
#NOTE; this code only changes where the interest is exactly "programming" and will not alter "programming languages" or if programming starts with a capital. 

lecturers.each do |element|
  element.each do |inner_element|
    if inner_element.is_a?(Array)
      inner_element.each do |third_layer_element|
        if third_layer_element.include?"programming"
        third_layer_element.replace"software engineering"
        else
          third_layer_element
        end
      end
       end 
    end
  end


puts lecturers
puts"---------------------------------------"

#5 write a program to sort and display each lecturers list in alphabetical order.[make sure your code changes the data withing the data structure].
#the sort! should permanenetly sort them in the array
lecturers.each{|data| jam=(data[1].sort!)
  puts " #{data[0]}, interests are: #{jam}"}
  puts"---------------------------------------" 
# 6 Extend the program in (4) to swap the first and last areas of interest on each lecturers sorted list[make sure your data changes the data in the data structure].
lecturers.each{|data| jam=(data[1].sort!)
  temp = data[1][0]
 data[1][0] = data [1][-1]
  data [1][-1] = temp
  puts " #{data[0]}, interests are: #{jam}"}