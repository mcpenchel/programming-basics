# Basic Types

# Strings
"Arcadea" # With double quotes you can use String Interpolation
# "My name is #{my_variable}"
'Arcadea'

# Integer
1
-5
15

# Floats
2.5
0.1
-0.7

# Boolean values
true
false

# Another special value
nil

# Range
(1..10) # useful for doing a to_a
(1...10)

# Date
# you need to require it; require 'date'
Date.today
Date.new(2020, 12, 25)

# Variables

students = "Cynthia"
students = ["Cynthia", "Filipe", "Gabriel"]

# one = is the assignment operator
# two == is the actual equality operator

# Methods
# 3 important questions
# 1) What's the name of the method?
# 2) What does the method receives? Does it have any
# parameters?
# 3) What does the method returns?

def name_of_method(param1, param2)
end

name_of_method("Hey", "What's up")
