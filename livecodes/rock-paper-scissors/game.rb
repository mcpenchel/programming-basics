options = ["paper", "scissor", "rock"]

puts "Choose between #{options.join('|')}"
selection = gets.chomp

until options.include?(selection)
  puts "NO! Invalid! Choose again: #{options.join('|')}"
  selection = gets.chomp
end

computer_selection = options.sample

puts "------------------------------"
puts "I chose #{computer_selection}"
puts "You chose #{selection}"
puts "------------------------------"

if computer_selection == selection
  puts "It's a draw!"
else
  case selection
  when "rock"
    puts "You won!" if computer_selection == "scissor"
    puts "You lose!" if computer_selection == "paper"
  when "scissor"
    puts "You won!" if computer_selection == "paper"
    puts "You lose!" if computer_selection == "rock"
  when "paper"
    puts "You won!" if computer_selection == "rock"
    puts "You lose!" if computer_selection == "scissor"
  end
end
