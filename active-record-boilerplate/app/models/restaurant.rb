class Restaurant < ActiveRecord::Base
end

# ActiveRecord methods

Restaurant.all # returns an ActiveRecord::Relation, which is
# just like an array, with all the restaurants from the database.

Restaurant.count # returns an integer with the amount of restaurants
# in the database.

Restaurant.find(15) # returns a Restaurant instance with the data
# populated by the SELECT * FROM restaurants WHERE id = 15
# PS: If there is no Restaurant with id 15, it will raise an Exception.

Restaurant.find_by(name: "Shrubbles") # returns a Restaurant instance
# or nil if not found.

Restaurant.where(rating: 10) # returns an ActiveRecord::Relation with
# all the restaurants that meet this criteria

cuisine = "japanese"

Restaurant.where("name LIKE ?", "%#{cuisine}%") # this is how we use
# the LIKE operator with ActiveRecord..
# ATTENTION: Use placeholders! We don't want SQL injection!!!

restaurant = Restaurant.new # creates a new instance of Restaurant
restaurant.name = "Shrubbles" # all attributes, by default, are already
# attr_accessors with ActiveRecord
restaurant.save # saves the instance's attributes in the database; we can say we
# persist the restaurant.
