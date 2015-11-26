# Example given 4563 9601 2200 1999
# Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
# Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
# Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
# Step 3: 70 (total above) % 10 == 0
# Step 4: Profit


# Class Warfare, Validate a Credit Card Number


# I worked on this challenge by myself, with Matt Oppenheimer.
# I spent 2.5 hours on this challenge.

# Pseudocode

# Input: 16-digit integer
# Output: true or false or ArgumentError if anything but 16 digits
# Steps:
# 1) Create a credit card number object
# 2) Create a credit card validator method
# 3) Check if credit card number is valid
#   4) Check if number is exactly 16 digits
#   5) IF it's not, return ArgumentError
#   6) ELSE
#   7) Create an array
#   8 Look through the number
#   9) Make each individual character in the integer a value in the array
#   10) Look through each number in the number array in reverse order
#   11) Double every other integer
#   12) Make each individual character in the integer a value in the array
#   13) Sum all the values in the array
#   14) IF the sum of the array is divisible by 10
#     15) Return True
#   16) ELSE
#     17) Return False


# Initial Solution

# Don't forget to check on initialization for a card length
# # of exactly 16 digits

# class CreditCard

#   def initialize (number)
#     @number = number.to_s
#     raise ArgumentError unless @number.length == 16
#   end

#   def check_card
#     number_array = @number.split(//)
#     number_array.map! {|x| x.to_i }
#   index = -2
#     while index.abs <= number_array.length
#       number_array[index] = number_array[index] * 2
#       index -= 2
#       end
#     new_array = number_array.join.split(//)
#     new_array.map! {|num| num.to_i}
#     new_array.reduce(:+) % 10 == 0
#   end
# end

# # Refactored Solution

class CreditCard

  def initialize (number)
    @number = number.to_s
    raise ArgumentError unless @number.length == 16
  end

  def check_card
    number_array = @number.split(//).map {|x| x.to_i }
    number_array = number_array.each_with_index.map do |num,index|
    index % 2 == 0 ? num * 2 : num
  end
    number_array = number_array.join.split(//)
    number_array.map! {|num| num.to_i}.reduce(:+) % 10 == 0
  end
end

# # Reflection

# What was the most difficult part of this challenge for you and your pair?
#   The most difficult part of this challenge was definitely getting every other array value to double starting at the last value. We disagreed some about approaches and struggled to find a method that would produce easily what we were looking for, so we wound up settling on a while loop for our initial method.
# What new methods did you find to help you when you refactored?
#  Passing .each_with_index to .map was the most helpful thing. We'd already worked out to use .reduce to sum up all the values in the array, but figuring out how to get an each that produced an array and gave us access to the indexes was key.
# What concepts or learnings were you able to solidify in this challenge?
#  This challenge helped me to understand the usefulness of .map and .each_with_index and that ending with the comparator will produce the return value without an explicit return statement. It also made some strong distinctions between what kinds of methods work on which types of objects in that we passed in a giant integer, had to turn it into a string so that we could turn it into an array so that we could iterate through it easily, but then back to integers to perform math on them.



