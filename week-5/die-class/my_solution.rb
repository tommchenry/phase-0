# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: a new instance of the class Die with a number of sides
# Output: the output of sides is the number of sides the die object has, the output of roll is a random number between 1 and the number of sides
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    # code goes here
    @sides = sides
  end

  def sides
    # code goes here
    p @sides
  end

  def roll
    # code goes here
    p rand(1..@sides)
  end
end

# die = Die.new(6)
# die.sides
# die.roll

# 3. Refactored Solution







# 4. Reflection