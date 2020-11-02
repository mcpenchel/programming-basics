class CreateRestaurants < ActiveRecord::Migration[6.0]

  # A set of instructions to change the database
  # These instructions will be executed when we run on
  # the terminal: rake db:migrate

  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.timestamps # created_at and updated_at
    end
  end
end
