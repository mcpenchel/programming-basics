require_relative "config/application"
require "sinatra"
require "sinatra/reloader"
require "sinatra/activerecord"

# HTTP
# HTTPS
# Verbs:
# GET - Asks for information
# POST - Sends information (for creating something on the server)
# PATCH - Sends information (for updating something)
# PUT - Sends information (for updating something)
# DELETE - Delete information

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  @restaurant = Restaurant.find(params[:id])

  erb :show
end

post "/restaurants" do
  @restaurant = Restaurant.new(
    name: params[:name],
    address: params[:address],
    cuisine: params[:cuisine]
  )
  @restaurant.save!

  erb :show
end
