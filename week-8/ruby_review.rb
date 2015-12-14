# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# In this challenge, you will take on the English language and some of it's eccentricities! Write a program that takes a number and returns it's English equivalent.

# Start with numbers up to 100. as a stretch, go up to 1000 or higher!

# Pseudocode
# Input: an integer
# Output: a string representing the integer in English
# Create a collection object that includes the words that are used as pieces to build a number phrase
# Create an empty phrase
# IF a number is less than 20, the phrase is simply the word for that number.
# ELSE Split the number into a collection object with each digit as an item in the collection
# If there are three items in the collection, add the digit's word to the word "hundred" to the empty phrase
# If there are two items in the collection and the second item is not zero, add the tens digit word number to the phrase
# Add the ones digit word to the phrase
# Return the phrase

# Initial Solution

WORDS = {
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17 => "seventeen",
    18 => "eighteen",
    19 => "nineteen",
    20 => "twenty",
    30 => "thirty",
    40 => "forty",
    50 => "fifty",
    60 => "sixty",
    70 => "seventy",
    80 => "eighty",
    90 => "ninety",
    100 => "hundred"
  }

# def in_words(num)
#   num_array = num.to_s.split('')
#   phrase = ""
#   case num_array.length
#   when 1
#     phrase = WORDS[num]
#   when 2
#     phrase += WORDS[(num_array[-2] + "0").to_i]
#     phrase += "-"
#     phrase += WORDS[(num_array[-1]).to_i]
#   when 3
#     phrase += WORDS[(num_array[-3]).to_i]
#     phrase += " "
#     phrase += WORDS[100]
#     phrase += " "
#     if num_array[-2].to_i < 2
#        phrase += WORDS[(num_array[-2].to_s + num_array[-1].to_s).to_i]
#     else
#       phrase += WORDS[(num_array[-2] + "0").to_i]
#       phrase += "-"
#       phrase += WORDS[(num_array[-1]).to_i]
#     end
#   end
#   p phrase
# end


# Refactored Solution

def in_words(num)
  num_array = num.to_s.split('')
  phrase = ""
  case num_array.length
  when 1
    phrase = WORDS[num]
  when 2
    phrase += WORDS[(num_array[-2] + "0").to_i] + "-" + WORDS[(num_array[-1]).to_i]
  when 3
    phrase += WORDS[(num_array[-3]).to_i] + " hundred "
    if num_array[-2].to_i < 2
       phrase += WORDS[(num_array[-2].to_s + num_array[-1].to_s).to_i]
    else
      phrase += WORDS[(num_array[-2] + "0").to_i] + "-" + WORDS[(num_array[-1]).to_i]
    end
  end
  p phrase
end

# Driver Code
in_words(4)         # => "four"
in_words(27)       # => "twenty seven"
in_words(92)       # => "ninety two"
in_words(112)
in_words(347)
in_words(999)

# Reflection

# What concepts did you review or learn in this challenge?
#   I learned about declaring my own constants (as the English words for these numbers won't change, but it would be a huge pain to declare the strings within the function), and I reviewed string concatenation and case-when statements.

# What is still confusing to you about Ruby?
#   I got really frustrated with this challenge because I felt like there was a more elegant solution out there, just outside my grasp, involving recursion. I could kind of make it out in words, but putting it in practice didn't work, and I wound up sinking a lot of time into it. It seems like you'd be able to break the integer up into an array and then keep calling it on itself until you hit the irregular numbers (less than twenty) before building it back up, but I couldn't make it happen in the time constraint.

# What are you going to study to get more prepared for Phase 1?
#   I plan to study more methods for collections and review things like recursion and simple recursion problems.