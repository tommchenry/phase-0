# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# Create a method that accepts some words as an argument.
# Take the words and turn them into a collection of individual words.
# Create an empty collection of words
# FOR each word in the sentence
  # Reverse the word
  # Add the reversed word to the new collection of words
# Return the collection of words as a new sentence.


# Initial Solution

def reverse_words(words)
  final_sentence = []
  words_array = words.split(' ')
  for word in words_array
    final_sentence << word.reverse
  end
  p final_sentence.join(" ")
end

# reverse_words("This is a collection of words.")

# Refactored Solution





# Reflection