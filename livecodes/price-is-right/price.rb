# The price is right
#
# Write a game where the player has to guess a random price
# between 1 and 100 chosen by the program. The program should
# keep asking until the player guesses the right price. When
# the guess is right, the program displays how many guesses it
# took the player to win.

# 1 - Asking the player his/her guess
# 2 - Generate the correct price (the computer price)
# 3 - Compare the guesses,
#        if it's wrong, ask again (loop?)
#        if it's right, congratulate the user and print how many
#                       guesses it took him/her to get it right!

puts "What's your guess? Pick between 1 and 5"
player_guess = gets.chomp.to_i
computer_guess = rand(1..5)
count = 1

# when using until, make the condition the opposite of the while
while player_guess != computer_guess
  puts "Ops, that was not the correct guess! Guess again"
  player_guess = gets.chomp.to_i

  count += 1
end

puts '#########################'
puts '#### Congratulations ####'
puts '#########################'

puts "You got it right in your attempt number #{count}"
