coin = ['heads', 'tails'].sample

puts "heads or tails?"
player_coin = gets.chomp

puts player_coin == coin ? "you won, hurray" : "you lost, sucker"
