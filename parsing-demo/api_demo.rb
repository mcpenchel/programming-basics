require 'json'
require 'open-uri'

github_url = 'https://api.github.com/users/filipe-alencar'
quotes_url = 'https://api.quotable.io/random'
chuk_norris_url = 'https://api.chucknorris.io/jokes/random'

file = open(chuk_norris_url).read

hash = JSON.parse(file)

puts hash["value"]
