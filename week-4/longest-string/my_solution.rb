# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil
# Input: an array of strings of varying lengths
# Output: either the longest string in the array, or nil (if there are no strings in the array)

# IF there are strings in the array
#   Create a container object, largest_string, with the contents of the first string in the array
#   FOR each string in the array
#     IF the string is longer than the largest_word container
#       Save this string as the new value of the largest_word container
#   RETURN the value of largest_word

# Your Solution Below
def longest_string(list_of_words)
  if list_of_words.length > 0
    longest_word = list_of_words[0]
    for word in list_of_words
      if word.length > longest_word.length
        longest_word = word
      end
    end
    return longest_word
  end
end
