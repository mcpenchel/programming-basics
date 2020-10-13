# Xmas is coming
# Write a method which returns the number of days until next Xmas.

require 'date'

# If today is 26/12/2020
# And xmas is 25/12/2020

# Xmas needs to change to 25/12/2021

def days_to_xmas(today = Date.today)
  xmas  = Date.new(today.year, 12, 25)

  if today > xmas
    xmas = Date.new(today.year + 1, 12, 25)
  end

  (xmas - today).to_i
end

puts days_to_xmas.class == Integer
puts days_to_xmas == 73
puts days_to_xmas(Date.new(2020, 12, 26)) != -1
