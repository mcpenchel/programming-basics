puts "What hour is it?"
hour = gets.chomp.to_i

# you don't always need to have elsif
# you don't always need to have else

if hour < 12
  puts "Good morning"
elsif hour >= 18
  puts "Good night"
else
  puts "Good afternoon"
end
