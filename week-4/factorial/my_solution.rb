# Factorial

# I worked on this challenge with Phil Thomas .
# Set a result variable 1
#IF number is 0 return 1.
  #ELSE iterate over a range from 1 to number
  #FOR each num in the range multiply num by the result variable
#RETURN result

# Your Solution Below
def factorial(number)
  result = 1
  if number != 0
    r=Range.new(1,number)
    r.each do |num|
      result = num * result
    end
 end
 return result
end