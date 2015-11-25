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

class CreditCard

  def initialize (number)
    @number = number.to_s
    raise ArgumentError unless @number.length == 16
  end

  def check_card
    number_array = @number.split(//)
    number_array.map! {|x| x.to_i }
  index = -2
    while index.abs <= number_array.length
      number_array[index] = number_array[index] * 2
      index -= 2
      end
    new_array = number_array.join.split(//)
    new_array.map! {|num| num.to_i}
    new_array.reduce(:+) % 10 == 0
  end
end


#test = [4, 4, 0, 8, 0, 4, 1, 2, 3, 4, 5, 6, 7, 9, 0, 6]

 #   temp_array = number_array.each_index {|x| number_array[x] * 2 if x % 2 == 0 }
  #  temp_array


#new = test.each_with_index {|x| test[x] * 2 }
#p new
  #if x % 2 == 0 }
# card = CreditCard.new(4563960122001999)
# p card.check_card

# # Refactored Solution








# # Reflection