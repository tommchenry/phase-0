# I worked on this challenge with Matthew Oppenheimer.

# Your Solution Below
=begin
Input: 3 positive integers
Output: true if it can be a triangle or false if otherwise

IF num_1 + num_2 > num_3
IF num_2 + num_3 > num_1
IF num_1 + num_3 > num_2
return true
=end

def valid_triangle?(num_1, num_2, num_3)
  if (num_1 + num_2 > num_3) && (num_2 + num_3 > num_1) && (num_1 + num_3 > num_2)
    return true
  else
    return false
  end
end