class Citizen

  def initialize(first_name, last_name, age)
    @first_name = first_name
    @last_name  = last_name
    @age        = age
  end

  def can_vote?
    # if @age > 17
    #   true
    # else
    #   false
    # end
    @age > 17
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end

end

#initialize(first_name, last_name, age)
#can_vote? (boolean)
#full_name (String)

# puts "What's your first_name?"
# f_name = gets.chomp
# puts "What's your last name?"
# l_name = gets.chomp
# puts "What's your age?"
# age = gets.chomp.to_i

# new_person = Citizen.new(f_name, l_name, age)
# new_person.first_name # => Gives us an error if we don't have
# the attr_reader :first_name
# new_person.first_name = "A new first name" # => Gives us an
# error if we don't have the attr_writer :first_name
