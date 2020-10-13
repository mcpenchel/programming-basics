# Strings

# Ruby identifies a string by seeing the quotes '' or ""

# Difference is, with "" we can use the String Interpolation

best_band = "Mastodon"

# Good example of interpolation
puts "My favorite band is #{best_band}"

# Bad example of interpolation
puts 'My favorite band is #{best_band}' # doesn't interpolate!

# Some built-in methods

best_band.upcase # => "MASTODON"
best_band.downcase # => "mastodon"
best_band.length # => 8
best_band.gsub('a', 'x') # => "Mxstodon"
"15".to_i # returns 15

# Integer

# operations: +-/*

555.to_s # returns "555"
555.odd? # returns true
555.even? # returns false

# Float

0.7.truncate # returns 0
0.7.round # returns 1
1.0.to_i # returns the Integer 1

# Array

array = [1, 2, 3]
array = %w(Rowan Taro Julia) # this builds array of strs

array.length # returns 3
array.sort # returns the sorted array
array.shuffle

# Range

(1..10).to_a # Builds an array for that range
('a'..'z').to_a # Builds an array from a to z

# Special Values

true # Boolean value
false
nil # represents the absance of value











