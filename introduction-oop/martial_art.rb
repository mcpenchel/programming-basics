require 'byebug'

# Reserved words inside a class:
# 1) the method initialize, which gets executed when we do
#    Class.new
# 2) attr_reader is a reserved name for generating getter methods
# 3) attr_writer is a reserved name for generating setter methods
# 4) attr_accessor is a reservaed name for creating both
#               attr_reader and attr_writer

class MartialArt

  attr_accessor :gears, :rules, :tactics, :description
  attr_reader :name

  # attr_reader :gears, :rules, :tactics, :description
  # attr_writer :gears, :rules, :tactics, :description

  # SACRED METHOD
  def initialize(name, gears, rules, tactics, description)
    @name = name
    @gears = gears
    @rules = rules
    @tactics = tactics
    @description = description
    @banned = false
  end

  def summary
    "#{@name} has a set of rules: #{@rules}, and it needs #{@gears.join(', ')}
    for you to train. The tactics are: #{@tactics}. #{@description}"
  end

  def ban!
    @banned = true
  end
end


gears = ["Shin", "Gloves", "Mouth Guard"]
rules = "No rules"
tactics = "Go for the head"
description = "Use your elbows, knees, legs and arms to hurt people."

muay_thai = MartialArt.new("Muay Thai", gears, rules, tactics, description)

# muay_thai is an object
# and we can also say that muay_thai is an instance of MartialArt class

jiu_jitsu = MartialArt.new("Jiu Jitsu", ["kimono"], "ground", "", "Very powerful")

muay_thai.gears.each do |gear|
  puts "You need a #{gear} to be able to train #{muay_thai.name}"
end

puts muay_thai.summary
