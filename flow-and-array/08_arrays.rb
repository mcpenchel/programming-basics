# Arrays

########
# CRUD #
########

# Create

empty_array   = []
# Index                0               1              2                3
black_sabbath = ["Ozzy Osbourne", "Tomy Iommi", "Gerard Butler", "Bill Ward"]

# Last index of the array is always array.size -1


# Read

black_sabbath[0] # Ozzy Osbourne
black_sabbath[4] # nil
black_sabbath[3] # Bill Ward

# Update

black_sabbath[0] = "Dio" # We just switched from "Ozzy Osbourne" to "Dio"
black_sabbath << "Michael Jackson"
black_sabbath.push("Madonna")

# Delete

black_sabbath.delete("Madonna")
black_sabbath.delete_at(4)

############################

# Looping!

black_sabbath.each do |member|
  puts member
end

black_sabbath.each { |member| puts "#{member} rocks!!!" }
