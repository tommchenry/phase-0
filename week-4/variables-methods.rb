puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"
puts "Hey, " + first_name + ", what's your favorite number?"
fav_num = gets.chomp
fav_num = fav_num.to_i + 1
puts "Hmmm... I don't know, have you considered " + fav_num.to_s + ", though?"

=begin
How do you define a local variable?
  A local variable is defined by giving a name in lowercase, hyphens or underscores, no spaces. You assign it a value using a single equal sign and the value you'd like to keep, whether it's a float, integer, or string.
How do you define a method?
  You define a method with the keyword def, then a name for the method, and then any arguments you'll need inside the method to return the correct output.
What is the difference between a local variable and a method?
  A local variable is a name that points to a value of some kind. A method is a series of commands that's run on an object (usually utilizing a number of local variables).
How do you run a ruby program from the command line?
  You run a ruby program on the command line by typing ruby YOUR_RUBY_FILENAME_HERE.rb.
How do you run an RSpec file from the command line?
  You run an RSpec file from the command line by typing rspec YOUR_SPEC_FILENAME.rb
What was confusing about this material? What made sense?
  I remember most of this material from the Codecademy exercises that were required to do the admission interview. The one thing I struggled with was trying to get too cute on my first pass at some exercises and answer them with as few lines as possible, when I needed to slow down, break them into smaller working pieces, and then refactor. Doing it wrong helped make that workflow make more sense, for one thing.

4.2.2 Solution:
  https://github.com/tommchenry/phase-0/blob/master/week-4/address/my_solution.rb
4.2.3 Solution:
  https://github.com/tommchenry/phase-0/blob/master/week-4/math/my_solution.rb
=end