# This is where you can create initial data for your app.
# To execute the ruby code in here, run rake db:seed in the terminal.

require 'faker'
require 'rest-client'
require 'json'

puts "Creating some restaurants..."

#################################################
# Most simple way: creating the objects manually
#################################################

restaurant = Restaurant.new(
  name: "Fornalha",
  address: "Ministro Viveiro de Castro",
  rating: 6
)
restaurant.save!


restaurant = Restaurant.new(
  name: "Eclipse",
  address: "Rua Barata Ribeiro"
)
restaurant.save!


# save! raises an Exception if the record is not saved.
# save does not.

#######################################################
# More advanced way: using faker to generate fake data.
#######################################################

50.times do
  r = Restaurant.new
  r.name = "#{Faker::Games::Pokemon.name} #{Faker::Restaurant.name}"
  r.address = Faker::Games::Pokemon.location
  r.save!
end

puts "Finished creating some restaurants..."

#######################################################
# Growth Hacking: using an API or scraping to get some
# initial data.
#######################################################

response = RestClient.get "https://api.github.com/users/lewagon/repos"
repos = JSON.parse(response)

# Instead of printing, we would create instances and save them
# using the information from the JSON file.
repos.each do |repo|
  puts repo['full_name']
end
