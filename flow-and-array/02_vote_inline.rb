puts "What's your age?"
age = gets.to_i

# if age >= 18
#   puts "You can vote"
# else
#   puts "You can't vote"
# end

puts "You can vote" if age >= 18
puts "You can't vote" if age < 18
