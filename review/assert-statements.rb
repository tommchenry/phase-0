# U2.W6: Testing Assert Statements

# I worked on this challenge by myself.


# 2. Review the simple assert statement

def assert
  raise "Assertion failed!" unless yield
end

# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs

# The method assert is defined
# The method assert will raise an "Assertion failed!" exception unless the code block that is passed to it returns true
# The value of the variable name is set to "bettysue"
# The assert method is passed the code block that will return true if the variable name is equal to "bettysue"
# The assert method is passed the code block that will return true if the variable name is equal to "billybob"
# Because name is not equal to billybob, a runtime error exception is thrown by the assert method

# 3. Copy your selected challenge here

def reverse_words(words)
  p words.split(' ').map!{|word| word.reverse}.join(" ")
end



# 4. Convert your driver test code from that challenge into Assert Statements

assert {reverse_words("Bob is good") == "boB si doog"}

# 5. Reflection