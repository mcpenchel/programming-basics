require 'date'

def tomorrow
  date = Date.today + 1
  return date.strftime('%d of %b, %Y')
end

puts tomorrow

# Conventions!!

# Lower snake case FOR THE WIN! For methods and variables

studentname = "Rowan" # Bad
student_name = "Rowan" # Good
