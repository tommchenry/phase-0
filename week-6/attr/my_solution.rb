#Attr Methods

# I worked on this challenge by myself.

# I spent [#] hours on this challenge.

# Pseudocode

# Input: Two classes
# Output: A salutation displayed to the console as a string.
# Steps: A new object is created
# The creation of this object triggers the creation of another object that contains name data
# When the first object is given the message to display a greeting, it does so using the name data in the second object

class NameData
  attr_reader :name
  def initialize
    @name = "Tom McHenry"
  end
end


class Greetings
  def initialize
    @namedata = NameData.new
  end

  def hello
    puts "Hello #{@namedata.name}! Have a great day!"
  end
end

greet=Greetings.new
greet.hello


# Reflection
# What is a reader method?
#   A reader method allows you to provide reading access to an object's instance variables as a method.
# What is a writer method?
#   A writer method allows you to provide writing access to an object's instance variables as a method.
# What do the attr methods do for you?
#   Attr methods allow you to provide single line access to the values of instance variables in an object to read or write to those values.
# Should you always use an accessor to cover your bases? Why or why not?
#   There are circumstances where you wouldn't necessarily want to provide both read and write access to instance variables. For example, if the value of an instance variable needs to remain fixed, using an accessor would allow other methods to write to that variable and change it if it wasn't deployed carefully.
# What is confusing to you about these methods?
#   The use of classes to spawn other classes and the passing of variables back and forth between them isn't completely strange, but I still have a little trouble wrapping my head around times when it would be used or at least seeing how it would all fit together.