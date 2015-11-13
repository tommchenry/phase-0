# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

# Input: array of strings (list of words)
# Output: nil (if array is empty) or the shortest string in the array

# We start with a variable that is empty for the shortest_string.
# IF the list_of_words isn't empty
#   Set the value of shortest_string to the first string in the list.
#   FOR each string in the list
#     IF the string is shorter than the shorest_string
#       Set this string to the new shortest_string
#   The function should then return the value of shortest string.

#Your Solution Below
def shortest_string(list_of_words)
  if list_of_words.length !=0
    shortest_string = list_of_words[0]
    for string in list_of_words
      if string.length < shortest_string.length
        shortest_string = string
      end
    end
    return shortest_string
  end
end

