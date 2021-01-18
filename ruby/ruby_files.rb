#opening and reading file in ruby

#File.open("git.txt","r") do |file|
 #   puts file.read() #reads whole file ..we are outputting to screen with puts
    #puts file.readline() not readline only reads first line, if run again it will read the next line -reads each line individually.
    #puts.file.readchar() -reads first character .each subsequent readchar will read the next character and so on
    #puts file.readlines()# -reads all the lines and stores them as an array 
#end

#using loops on files
#File.open("git.txt","r") do |file|
#for line in file.readlines()
 #   puts line + "*"
#end
#end

#can also do the following to store the file in a variable seperately without needing the do or |file| 
#file =File.open("git.txt","r") 

#puts file.read()
#always remember to close files when finished
#file.close()

#open files in "r" -read only "a" -append "w" to overwrite all info in a file or to create a new one."r+" this is read and write to the file

# File.open("git.txt", "a") do |file|
#   file.write("\nthis is added to the end of the file")
# end

File.open("index.html","w") do |file|
    file.write("<h1>Hello</h1>")
end

File.open("index.html","r+") do |file|  
    #file.readline() yoou can move down the file lines using this. readline and readchar sort of moves the cursor round the file..
    file.readline()
    file.write("overwritten")
    #overwritten will now appear on the second line fo the file
end
