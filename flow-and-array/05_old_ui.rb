puts "Please choose an operation [read|write|close|help]"
option = gets.chomp.downcase

# case/when is for EQUALITY!!

# ############################
# Non-related, but useful!!
# option ||= "default value"
# ############################

# There's no way to do when >= 18
# There's no way to do when !something

case option
when "read" then puts "Entering read mode"
when "write" then puts "Entering write mode"
when "close"
  puts "Bye!"
when "help"
  puts "Displaying helpful hints"
else
  puts "Invalid option"
end
