# Simple Substrings

# I worked on this challenge by myself.
# Input: An address as a string
# Output: "Welcome to California" or "You should move to California"

#

# Your Solution Below
def welcome(address)
  if address.include?("CA")
   return "Welcome to California"
  else
    return "You should move to California"
  end
end