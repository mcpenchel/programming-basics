# This algorithm (Binary Search) idea was created to SEARCH for stuff
# inside an array :D

# Requirement to work (on our case): None
# But if we were searching instead of just guessing,
# it would need to be a sorted collection

# Complexity: log2(max)

max = 10000
min = 1

price = rand(min..max)
guess = (min + max)/2

count = 1

# min:1 - max:100
# 1st guess: 50

# min: 1 - max: 50
# 2nd guess: 25

# when using until, make the condition the opposite of the while
while guess != price

  if guess < price
    min = guess
  else
    max = guess
  end

  guess = (min + max)/2

  count += 1
end

puts "You got it right in your attempt number #{count}"
