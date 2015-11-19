# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
#   Positive integer
# What is the output? (i.e. What should the code return?)
#   A string of the integer that is comma separated
# What are the steps needed to solve the problem?
# Turn the integer to a string
# Reverse the string
# Take the string and split it into a container object
# Create a second container object to hold the final answer
# Iterate through the first container, adding each number to the second container
# IF it's the third term
  # Add a comma to the second string
# Convert the second container to a string
# Reverse the string
# RETURN the string

# 1. Initial Solution
# def separate_comma(integer)
#   integer = integer.to_s.reverse.split("")
#   comma_number = []
#   for place in 0..integer.length
#     comma_number.push(integer[place])
#     if (place.to_i + 1) % 3 == 0 && place < integer.length - 1
#       comma_number.push(",")
#     end
#   end
#   p comma_number.join.reverse
# end

# 2. Refactored Solution
def separate_comma(integer)
  integer = integer.to_s.reverse.split("")
  integer.length.times do |place|
    if (place + 1) % 3 == 0 && place < integer.length - 1
      integer[place] = integer[place] + ","
    end
  end
  p integer.join.reverse
end


# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
#   I really tried to think hard about the process people use when they sit and punctuate a number correctly by hand and then match that process. That meant first thinking about how to work from right to left. I also considered dividing the initial integer by 3 and then offsetting the first comma by either 1, 2 or 3 depending on the remainder before iterating through every third term.
# Was your pseudocode effective in helping you build a successful initial solution?
#   Somewhat. The most helpful moments for me came when I stopped to think about how when a person punctuates a number with commas they work right to left, rather than left to right. That and the moment when I figured out that my initial solution wasn't working because I was pushing to an array I was iterating through, thus increasing the size of the array and throwing off the counts.
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#   It's not present in the refactored solution, but I went down a lot of side tangents trying to get different refactoring solutions to work. The method .each_slice went some interesting places by letting me divide the number up into sub-arrays that were three places long and then add a comma to them, but I couldn't quite work out how to reassemble them after the fact or how to keep from appending a comma to the beginning of the number in some cases. I also looked at .map a little, but similarly struggled to pull it together.
# How did you initially iterate through the data structure?
#   Initially I iterated with a for loop that started at zero and ran to the length of the integer as an array, this meant I could work directly with the place in the number as a term and add commas accordingly. Later, I realized I could refactor this to a .times loop much more simply.
# Do you feel your refactored solution is more readable than your initial solution? Why?
#   Somewhat. It gets rid of an extraneous copy of the array by concatenating the comma to the array value at the appropriate position which circumvents the problem I'd had with growing the size of the array by using .insert to add the commas as new values in the array.
