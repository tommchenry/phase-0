# Analyze the Errors

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# errors.rb
# 2. What is the line number where the error occurs?
# 171
# 3. What is the type of error message?
# Syntax error.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter says there's an unexpected end-of-input, and that it is expecting the keyword_end.
# 5. Where is the error in the code?
# The interpreter sees the error as coming at the very end of the file, after "#Write your reflection below as a comment."
# 6. Why did the interpreter give you this error?
# There is an end statement missing from the while loop that beings on line 15.

# --- error -------------------------------------------------------

south_park = "South Park"

# 1. What is the line number where the error occurs?
# 36
# 2. What is the type of error message?
# Name error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says there is an undefined variable or method 'south_park'.
# 4. Where is the error in the code?
# The error is in main:Object.
# 5. Why did the interpreter give you this error?
# The variable south_park has no value associated with it.

# --- error -------------------------------------------------------

def cartman()

end

# 1. What is the line number where the error occurs?
# 51
# 2. What is the type of error message?
# No method error
# 3. What additional information does the interpreter provide about this type of error?
# There is an undefined method 'cartman.'
# 4. Where is the error in the code?
# The error is in main:Object
# 5. Why did the interpreter give you this error?
# The method cartman() is not defined in any way.

# --- error -------------------------------------------------------

def cartmans_phrase(cartman_thoughts)
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments (1 for 0) has been given to cartmans_phrase
# 4. Where is the error in the code?
# Line 71 in '<main>''
# 5. Why did the interpreter give you this error?
# There is a call to the cartmans_phrase method that includes an argument, but the method definition does not accept any arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says('Go to hell!')

# 1. What is the line number where the error occurs?
# 87
# 2. What is the type of error message?
# Argument error
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments had been given (0 for 1) to cartman_says.
# 4. Where is the error in the code?
# Line 91 in '<main>'
# 5. Why did the interpreter give you this error?
# There is no argument provided for the cartman_says call, but the cartman_says method requires an argument.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kenny')

# 1. What is the line number where the error occurs?
# 108
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# The wrong number of arguments (1 for 2) is being passed to cartmans_lie.
# 4. Where is the error in the code?
# Line 112 in '<main>'
# 5. Why did the interpreter give you this error?
# The method cartmans_lie is expecting to receive two arguments, but is only being passed one.

# --- error -------------------------------------------------------

puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 127
# 2. What is the type of error message?
# Type Error
# 3. What additional information does the interpreter provide about this type of error?
# The string can't be coerced into a Fixnum.
# 4. Where is the error in the code?
# Line 127
# 5. Why did the interpreter give you this error?
# Line 127 is trying to perform a calculation with an integer and a string. These types don't match and Ruby's not sure how to make the string into an integer to complete the multiplication.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/4


# 1. What is the line number where the error occurs?
# 142
# 2. What is the type of error message?
# Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter says that line 142 attempts to divide an integer by zero.
# 4. Where is the error in the code?
# Line 142
# 5. Why did the interpreter give you this error?
# Dividing by zero is an illegal operation.

# --- error -------------------------------------------------------

require_relative "calc.rb"

# 1. What is the line number where the error occurs?
# 158
# 2. What is the type of error message?
# Load Error
# 3. What additional information does the interpreter provide about this type of error?
# It cannot load the file cartmans_essay.md as it does not exist at the location specified.
# 4. Where is the error in the code?
# Line 158
# 5. Why did the interpreter give you this error?
# It's attempting to require a file that does not exist on my system.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
# Which error was the most difficult to read?
#   I think the very first error was the most difficult to work out because the line number points to the end of the file, when the actual problem is with the way the while loop is written way back up at the top.
# How did you figure out what the issue with the error was?
#   The names of the errors were usually very descriptive. That and the line number made it usually very easy to find the problem.
# Were you able to determine why each error message happened based on the code?
#   I was. With the exception of the first one that threw me for a minute or two, the others were pretty easy to work out based on the error message and the way the code was written.
# When you encounter errors in your future code, what process will you follow to help you debug?
#   I think reading the debug message carefully and starting with where the debug message says the error is will be an important part of starting to fix errors. Having a line number or a general type of error that's being produced is a huge portion of the work.