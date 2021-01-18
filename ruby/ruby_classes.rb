class Book
attr_accessor :title, :author, :pages
def initialize(title, author, pages)
    #set attribute of class same as what is passed in
    @title =title
    @author=author
    @pages=pages

end
#def method that can be used on all your class objects.
def long_read
    if @pages >=600
        return true
    end
    return false
end


end
#better to use an initialize method in your class to automatically create your objects than create them as below as far easier and less code.

# book1 =Book.new()
# book1.title="Harry Potter"
# book1.author="JK Rowling"
# book1.pages=400

# book2=Book.new()
# book2.title="The Hobbit"
# book2.author="Tolkein"
# book2.pages=560

book3=Book.new("LOTR", "Tolkein", 1056)

puts book3.title
puts book3.long_read



