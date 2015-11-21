# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

# 0. Pseudocode

# Input: a new instance of the class Die with a number of sides
# Output: the output of sides is the number of sides the die object has, the output of roll is a random number between 1 and the number of sides
# Steps:


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     unless sides > 0
#       raise ArgumentError.new("Your die can only have a positive number of sides!")
#     end
#     @sides = sides
#   end

#   def sides
#     p @sides
#   end

#   def roll
#     p rand(1..@sides)
#   end
# end

# die = Die.new(6)
# die.sides
# die.roll

# 3. Refactored Solution

class Die
  def initialize(sides)
    unless sides > 0
      raise ArgumentError.new("Your die can only have a positive number of sides!")
    end
    @sides = sides
  end

  def sides
    p @sides
  end

  def roll
    p rand(1..@sides)
  end
end

# 4. Reflection

# What is an ArgumentError and why would you use one?
  # An ArgumentError is raised when there's something wrong with one of the arguments being passed to the method. You'd use one when you need to insure that your methods are being passed good usable data of the right object type. In this case, a negative value will produce some nonsensical answers and will return a nil to the .roll method because Ruby can't interpret the random range correctly.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
  # I used .rand for the first time here, but it's pretty straightforward and very similar to the way the random number method works in some of the other languages I've tinkered with. The main new things this challenge were actually "unless" and "raise." Unless was a little bit of a head scratcher because it's counter-intuitive to how I'd expect it to work. Unless the condition is true, don't do the code in the block? Ruby's so close to the way people talk and structure language, this seems off. The only way I could make sense of it was to think of it as "Do this method as written, UNLESS this condition is false, in which case drop into this block of code and do it instead."

# What is a Ruby class?
  # A class is a blueprint for the construction of an object. Its where you can lay out all the methods and properties associated with the objects that are constructed using that class as the design.

# Why would you use a Ruby class?
  # You would use a Ruby class when you want to start making your own objects that all need the same variables and specialized methods. You can fake your way through smaller problems for a long time using Ruby's inbuilt objects, but past a certain point, you need custom objects and that's when you'd use a class.

# What is the difference between a local variable and an instance variable?
  #Cosmetically, instance variables always start with an @ sign, while local variables are simply named with a variable name. Local variables are limited to being used within the method where they are defined -- if you need the variable's value in a new method, you have to return them out of the first method and then pass them as an argument to the second method, you can't just use the variable's name in the second method. An instance variable is a feature of the object that's been created when the object is constructed. It can be called by any method that uses the object without having to recreate the variable inside each method.

# Where can an instance variable be used?
 #An instance variable can be used in any specific instance (which is another way of saying "object") of a class. It's available then to any method of the object.