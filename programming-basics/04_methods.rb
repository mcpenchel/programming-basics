# puts "Hello John!"
# puts "Hello Paul!"
# puts "Hello Ringo!"
# puts "Hello Tatchi!"
# puts "Hello Rowan!"
# puts "Hello Taro!"
# puts "Hello Milene!"

# How to improve this code, so that I don't have to change
# the "Hello" everywhere in my code that I use it?

# puts does the printing on the terminal, but it
# actually returns nil!

# Every method returns something!!!
# And Ruby returns the last line executed of the method
# by default. This is the implicit return!

# When you type "return something", you are doing an
# explicit return

def greet(name)
  "Hi, #{name}."
end

# puts greet("John")
# puts greet("Paul")
# puts greet("Ringo")
# puts greet("Tatchi")
# puts greet("Rowan")
# puts greet("Taro")
# puts greet("Milene")


def full_name(first_name, last_name)
  # When declaring a variable inside a method,
  # it exists only inside the method itself!
  name = "#{first_name} #{last_name}"
  return name
end

name = "Rowan"
surname = "Douglas"

puts full_name(name, surname)

# puts full_name("Matheus") #=> arguments error
