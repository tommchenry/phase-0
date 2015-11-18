# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#   Positive integer
# What is the output? (i.e. What should the code return?)
#   A string of the integer that is comma separated
# What are the steps needed to solve the problem?
# Turn the integer to a string
# Reverse the string
# Take the string and split it into a container object
# Create a second container object to hold the final answer
# Iterate through the first container, adding each number to the second container
# IF it's the third term
  # Add a comma to the second string
# Convert the second container to a string
# Reverse the string
# RETURN the string

# 1. Initial Solution
def separate_comma(integer)
  integer = integer.to_s.reverse.split("")
  comma_number = []
  for place in 0..integer.length
    comma_number.push(integer[place])
    if (place.to_i + 1) % 3 == 0 && place < integer.length - 1
      comma_number.push(",")
    end
  end
  p comma_number.join.reverse
end

# separate_comma(1000)
# separate_comma(10000)
# separate_comma(100000)
# separate_comma(1000000)
# 2. Refactored Solution




# 3. Reflection