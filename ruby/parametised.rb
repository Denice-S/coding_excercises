
# A small web-based program generates the following HTML
# snippet:
# <p>
# Thank you, <em>John</em>, for placing your order with
# us.<br />
# Please download our <a href=”terms.html”>terms and
# conditions</a>.<hr />
# </p>
# Write a Ruby program that generates this code and allows
# for the name to be parametrised. That is, when the
# program is executed, arrange for the name in the
# generated HTML (“John” in the example HTML code) to
# take its value from a variable object.
puts "what is your name"
name=gets.chomp
puts "<p>Thank you, <em>#{name}</em>, for placing your order with
 us.<br />
Please download our <a href=”terms.html”>terms and
conditions</a>.<hr /> </p>"