# Concatenate Two Arrays

# I worked on this challenge by myself.

# Input: Two Arrays
# Output: A single array produced by concatenating the two arrays.

# Create an empty container object
# FOR each value in arrray_1
#   Save it to the container
# FOR each value in array_2
#   Save it to the container
# Return the container


# Your Solution Below

def array_concat(array_1, array_2)
  full_array = []
  array_1.each do |i|
    full_array.push i
  end
  array_2.each do |i|
    full_array.push i
  end
  return full_array
end
