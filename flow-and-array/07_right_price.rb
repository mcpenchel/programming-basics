computer_choice = rand(1..5)

# Sometimes it's useful to assign some value to the variable
# of the condition, so that the loop gets executed AT LEAST
# once.
user_choice = nil

until user_choice == computer_choice
  puts "What is your guess? Choose between 1 and 5"
  user_choice = gets.chomp.to_i
end

puts "You won"
