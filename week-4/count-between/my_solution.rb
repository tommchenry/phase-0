# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Input: An array of integers, an upper bound and a lower bound
# Output: The count of integers in the array between the two bounds, or 0 if the array is empty

# We'll need to create a count variable that's set at 0 to start with to take care of any empty arrays.
# Then for each item in the array, we'll check IF it's greater than or equal to the lower bound and lesser than or equal to the upper bound.
#   IF it is, add one to the count
# Finally return the count.

# Your Solution Below

def count_between(list_of_integers, lower_bound, upper_bound)
  count = 0
  list_of_integers.each do |int|
    if (lower_bound..upper_bound).include? int
      count = count + 1
    end
  end
  return count
end