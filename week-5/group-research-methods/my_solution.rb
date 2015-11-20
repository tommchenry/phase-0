# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
# Input: An array and and a single letter
# Output: An array of words that contain the single letter

def my_array_finding_method(source, thing_to_find)
  p source.select {|word| word.to_s.include?(thing_to_find)}
end

# Input: A hash and an integer
# Output: Array of pet names with the ages by name

def my_hash_finding_method(source, thing_to_find)
  p source.select {|key,value| source[key] == thing_to_find}.keys
end


# Identify and describe the Ruby method(s) you implemented.
# For the first of my two problems, I used the .select method. Select comes to us from the Enumerables and will return an array of anything in the object that it's called on that matches the code block that follows it. Think of that code block like giving .select a grocery list to pick up from inside the object. Because the array that's passed to my_array_finding_method includes some integers, you also need to run .to_s to turn all the elements of the array into strings. Then .include? works to return true on any element in the array that includes the letter we passed in as an argument. Because .include? is returning true or false values, .select will then accumulate an array of only those values that come back true.
#
#The second problem also uses the .select method, which is proving a real workhorse of a method. Because we're checking for only those pets who have the same age, we select only those elements of the initial hash that have the same value as the thing_to_find argument. Where things get tricky is that only running .select will return a new hash with the matching values, but the expected output is an array. So calling .keys will return an array of only the keys the smaller hash that .select built.
#
# I don't have any great RubyDocs deciphering tricks beyond trying to remember that they show you the methods in a vaccuum, and it's important to remember that you can stack them together. The second problem hung me up for a long time while I tried to work out how to turn the .select hash into some kind of array of the correct values because I was sure there was one single method that would perform both parts.

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#