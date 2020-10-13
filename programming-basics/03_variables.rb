# When to use a variable? When to declare it??
# Answer: whenever you want to re-use the value inside it
# later!!

# This = is the assignment operator; it's not equal!!
name = "Matheus"

puts "What is your last name, #{name}?"
last_name = gets.chomp

# String concatenation
full_name = name + " " + last_name

# String interpolation
# name = "#{name} #{last_name}"

puts full_name

# Incrementing

students_number = 10

# Two different syntaxes for incrementing
students_number = students_number + 2
# or
students_number += 2

# Two different syntaxes for decrementing
students_number = students_number - 2
# or
students_number -= 2




