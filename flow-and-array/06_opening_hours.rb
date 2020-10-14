# from 9 AM to 12, it is open
# from 13 to 19, it is open

hour = 19.5

puts "Now it's #{hour}"

if (hour >= 9 && hour <= 12) || (hour >= 13 && hour <= 19)
  puts "It's open"
else
  puts "It's closed, come back later (or tomorrow)"
end
