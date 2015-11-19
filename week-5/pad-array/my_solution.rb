# Pad an Array

# I worked on this challenge by myself, with David Diaz.

# I spent 1 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# An array, a size, and values that we want to pad the array with.
#
# What is the output? (i.e. What should the code return?)
# An array of the size that we passed in as an Intenger.
#
# What are the steps needed to solve the problem?
# First find the difference between our padding size and the length of the input array.
# FOR each missing value add another spot in the array with the value that was entered.
# RETURN the value of the array.


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   # Your code here
#   size_diff = min_size - array.length
#   for num in 1..size_diff
#     array << value
#   end
#   p array
# end


# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
#   other_array = array.clone
#   size_diff = min_size - other_array.length
#   for num in 1..size_diff
#     other_array << value
#   end
#   p other_array
# end


# 3. Refactored Solution

def pad!(array, min_size, value = nil) #destructive
  (min_size - array.length).times do
    array << value
  end
  p array
end

def pad(array, min_size, value = nil) #non-destructive
  other_array = array.clone
  (min_size - other_array.length).times do
    other_array << value
  end
  p other_array
end

# 4. Reflection
# Were you successful in breaking the problem down into small steps?
#   We were very successful in breaking the problem down into small steps.
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#   The pseudocode translated very easily into code, such that the first attempt at the initial solution passed on the first try. Most of our time was spent just discussing the code we'd put down to make sure we were confident about what would happen at each step before running it. The only difficulty we had really was in the non-destructive solution when our thinking was correct but our syntax to represent the thinking was incorrect -- we originally didn't make a copy of the original array, just a reference to it.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#   Our initial solution for pad! was successful immediately, but our initial solution for pad failed because we used other_array = array, which doesn't create a copy of the array, just a reference that points to the original array. This meant our push statements were all pushing to both arrays, destroying the original values.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
#   We got rid of some extraneous temporary variables and used a times loop in lieu of a for loop. We didn't find any additional existing methods that would simplify the code more.
# How readable is your solution? Did you and your pair choose descriptive variable names?
#   Our solution is very readable, especially upon refactoring as I think the times method says a little more clearly what we were trying to accomplish with the loop while also getting rid of a local variable that holds a value only to iterate through it. We chose descriptive variable names, especially in that we only named one variable in the refactored solution.
# What is the difference between destructive and non-destructive methods in your own words?
#   Destructive methods are called destructive because they destroy the original objects initial state. They might add to the original object, remove from it, or replace it entirely, but the initial state of the object is lost. A non-desctructive method, then, acts to use the values in the object, but doesn't change them.
