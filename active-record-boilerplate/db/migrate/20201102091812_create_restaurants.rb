class CreateRestaurants < ActiveRecord::Migration[6.0]

  # A set of instructions to change the database
  # These instructions will be executed when we run on
  # the terminal: rake db:migrate

  # The change method is a sacred method, just like
  # the initialize one. All the migration's content will always
  # be inside the change method.

  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps # created_at and updated_at
    end
  end
end
