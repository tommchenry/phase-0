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

# def reverse_words(words)
#   final_sentence = []
#   words_array = words.split(' ')
#   for word in words_array
#     final_sentence << word.reverse
#   end
#   p final_sentence.join(" ")
# end


# Refactored Solution

def reverse_words(words)
  p words.split(' ').map!{|word| word.reverse}.join(" ")
end

# Reflection
# What concepts did you review in this challenge?
#   I reviewed enumerable methods in this challenge. My initial solution doesn't include them, but I wanted to make sure my thinking was correct before I tried some more fun stuff. At first I was working with .each, but then I remembered that .map! would return an array of the same size and swapped it out. I also tinkered with a recursive solution to the challenge just to dip a toe in that stuff again.

# What is still confusing to you about Ruby?
#   I wouldn't say it's "confusing" per se, but I notice that if I have to iterate through a collection, I always reach for for or while loops before even considering the enumerables (even though they're more succinct and more powerful). I think I'm just more comfortable with the most basic tools right now and tend to lean on them.

# What are you going to study to get more prepared for Phase 1?
#   I'm going to study more about recursion because even though we haven't had any challenges that specifically require it yet, my small attempts with it on my own tend to come close to working but not quite. In this case, my single-line solution is more succinct than a recursive one, but that I couldn't make a recursive one quite work was frustrating.