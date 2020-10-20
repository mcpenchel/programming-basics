require 'json'

filepath    = 'data/beers.json'

################# Reading

serialized_beers = File.read(filepath)

hash = JSON.parse(serialized_beers)

puts hash["title"]
puts hash["beers"][3]["origin"]

hash["beers"].delete_at(2)

################# Writing

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(hash))
end
