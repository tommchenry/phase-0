# Leap Years

# I worked on this challenge by myself.
# Input: Integer
# Output: true or false

# Your Solution Below
def leap_year?(year)
# TRUE: IF year is divisible by 4 and it is not divisible by 100 OR if it is divisible by 400
  if year%4 == 0 && year%100 != 0 || year%400 == 0
    return true
# FALSE Otherwise
  else
    return false
  end
end