
# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums.length > 0
  #FOR each number in the array, check if the number is larger than the largest number
    largest = list_of_nums[0]
    for num in list_of_nums
      largest = num if num > largest
    end
  end
  return largest
end
