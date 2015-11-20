# Calculate the mode Pairing Challenge

# I worked on this challenge with Jack Abernethy.

# I spent 1.5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

# def mode(array)
#  numbers = Hash.new { |hash, key| hash[key] = 0 }
#   array.each do |key|
#   if numbers.has_key?(key)
#   numbers[key] += 1
#   else
#   numbers[key] = 1
#   end
#  end

#  max = numbers.max_by { |key, value| value }
#  ret = Array.new
#  numbers.each do |key, value|
#   if value == max[1]
#   ret.push(key)
#   end
#   # puts "Key: #{key} value: #{value}"
#  end

#  return ret
# end


# 3. Refactored Solution

def mode(array)
 numbers = Hash.new(0)
  array.each do |key|
  numbers[key] += 1
  end
  numbers = numbers.sort_by{|key,value| [-value, key]}
  ret = Array.new
  numbers.each do |key, value|
    if value == numbers[0][1]
      ret << key
    end
  end
 return ret
end

# 4. Reflection
# Which data structure did you and your pair decide to implement and why?
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# What issues/successes did you run into when translating your pseudocode to code?
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?