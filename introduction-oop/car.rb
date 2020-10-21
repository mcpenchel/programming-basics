class Car

  attr_reader :brand
  attr_accessor :color, :fuel_type

  def initialize(color, brand, fuel_type)
    @color = color
    @brand = brand
    @fuel_type = fuel_type
    @engine_started = false
  end

  def engine_started?
    @engine_started
  end

  def start_engine
    @engine_started = true
  end

end

ken_gti = Car.new("Red", "Volkswagen", "Gasoline")
cynthia_celta = Car.new("Red", "Chevrolet", "Gasoline")

puts ken_gti.brand

ken_gti.start_engine

puts cynthia_celta.engine_started?
