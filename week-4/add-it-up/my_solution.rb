# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

=begin
new array = nums
iterate over the array add value to prev value
return solution
# Factorial

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
outputs total
=end


# Input:
# Output:
# Steps to solve the problem.


# 1. total initial solution
=begin
def total(nums)
 result = 0
 nums.each do |num|
     result = num + result
 end
return result
end
=end

# 3. total refactored solution

def total(arr)
 return arr.reduce(:+)
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input:
# Output:
# Steps to solve the problem.
=begin
define sentence maker
input array of strings
run capitalize on 1st value
push period onto end
concatenate them with space separator
output capitalized sentence that ends in period
=end

# 5. sentence_maker initial solution
=begin
def sentence_maker(sentence)
 sentence.first.capitalize!
 sentence = sentence * " " + "."
 return sentence
end
=end

# 6. sentence_maker refactored solution
def sentence_maker(sentence)
sentence.first.capitalize!
return sentence * " " + "."
end