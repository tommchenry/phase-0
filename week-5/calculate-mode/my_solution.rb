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
#   We decided to use a hash for the data structure because we needed to store two different pieces of information: each integer that appeared in the array (the key), and the number of times that integer appeared (the value).
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
#   Yes and no. We had pseudocode for the problem pretty quickly but really struggled to find methods that we could implement to perform these rather simple tasks. Try as we might, we couldn't find a single method to return all the keys that matched a certain value (in this case the largest one or ones).
# What issues/successes did you run into when translating your pseudocode to code?
#   As mentioned above, we really struggled to work out a method that would do exactly what we needed it to. Pseudocode helped some in that we were able to look at smaller steps of what we expected a method to be able to do and produce some solutions that were long but workable.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# Our refactored solution relies on using .sort_by to sort all the hash's keys by the values. This means at least the first mode is the first key in the sorted hash and means we only have to iterate through the hash until we hit values smaller than that. The method .each lets us increment through all the keys and values of the hash.