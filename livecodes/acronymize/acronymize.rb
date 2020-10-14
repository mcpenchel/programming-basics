# Rule nr 7 about methods
# -> Methods should NEVER puts
# -> Methods should NEVER gets.chomp

def acronomyzer(sentence)
  words = sentence.split
  letters = []

  words.each do |word|
    letter = word[0]
    letters << letter
  end

  letters.join.upcase
end

# Acronymizer method (of sorts)
# puts something == something_else

puts acronomyzer("Mastodon is the best band").class == String
puts acronomyzer("What the fuck") == "WTF"
puts acronomyzer("") == ""


puts acronomyzer("not safe for work")
puts acronomyzer("missing in action")
puts acronomyzer("oh my god")
puts acronomyzer("laughing out loud")


