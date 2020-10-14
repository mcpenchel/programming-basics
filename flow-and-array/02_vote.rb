puts "What's your age?"
age = gets.to_i

if age >= 18
  puts "You can vote"
else
  puts "You can't vote"
end

# condition ? code_when_truthy : code_when_falsey

puts age >= 18 ? "You can vote" : "You can't vote"
