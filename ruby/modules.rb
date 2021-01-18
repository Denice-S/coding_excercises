#use modules as containers to group related methods together for organisation
module Tools

    def sayhi(name)
        puts "hello #{name}"
    end
    def saybye(name)
        puts "bye #{name}"
    end
end
#to use methods in modules-you have to include the module
include Tools
Tools.sayhi("Denice")

#to use modules in other files use require_relative to use one in same directory
#require