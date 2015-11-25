# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent .5 hours on this challenge.

# Pseudocode

# Input: An array of strings.
# Output: A random string from the array.
# Steps: Initialize the object taking the argument as the instance variable.
# Sides should return a count of the length of the array
# Roll should return one item from the array selected at random


# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new("Sides must have labels.") if labels.length == 0
#     @labels = labels
#   end

#   def sides
#     p @labels.length
#   end

#   def roll
#     p @labels.sample(1).join
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    raise ArgumentError.new if labels.empty?
    @labels = labels
  end

  def sides
    p @labels.length
  end

  def roll
    p @labels.sample
  end
end

# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#  In this die class you have to past an array listing all the values, where the last one assumed integers and so needed to only be passed a total. Very little logic has to be changed with the exception that since you can't have an array with a negative value, the check to raise the argument error now depends on the array having some values.
# What does this exercise teach you about making code that is easily changeable or modifiable?
#  I didn't reuse any of the code from my previous solution, but knowing how the code worked in the previous solution helped me know just what I needed to do here, almost like doing some pre-pseudocode pseudocode.
# What new methods did you learn when working on this challenge, if any?
#  I had used .sample before, but I thought you had to pass it an argument (see my initial solution). Unfortunately this returns a single-value array and the answer here expects a string, so I was using .join to turn the array into a string. It turns out giving .sample no argument returns a single item not as an array, so that was some nice shading to pick up. I also used .empty for the first time in the test to raise the argument error.
# What concepts about classes were you able to solidify in this challenge?
#  The one error I made that kept my code from working the first time was that I used labels rather than @labels in the .sides method. Since the die object was initialized with a value for @labels. The instance variable (@labels) was what .length needed to access, so if I passed it labels, it has no idea what value to expect.
