require "sqlite3"
DB = SQLite3::Database.new("tasks.db")
DB.results_as_hash = true
require_relative "task"

# # Testing method find
# task = Task.find(1)
# # puts task.title

# # Testing method save for updating
# task.title = "Drink a lot tonight"
# task.save

# task = Task.find(1)
# puts task.title

# Testing method save for creating
# new_task = Task.new(title: "Play some RPG")
# new_task.save
# puts new_task.id # => should be 2

# second_task = Task.find(2)
# puts second_task.title

# Task.find(2).destroy

# # Testing method all
# Task.all.each do |task|
#   puts task.title
# end

