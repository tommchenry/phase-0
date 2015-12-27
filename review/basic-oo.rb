# OO Basics: Student


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution

class Student
  attr_accessor :scores, :first_name

  def initialize(scores,first_name)
    @scores = scores
    @first_name = first_name
  end

  def average
    return @scores.reduce(:+)/@scores.length
  end

  def letter_grade
    if average >= 90
      return "A"
    end
    if average >= 80
      return "B"
    end
    if average >= 70
      return "C"
    end
    if average >= 60
      return "D"
    end
    if average < 60
      return "F"
    end
  end

end

students = [Student.new([100,100,100,0,100], "Alex"), Student.new([100,100,100,0,100], "Bill"), Student.new([100,100,100,0,100], "Charlie"), Student.new([100,100,100,0,100], "Davina"), Student.new([100,100,100,0,100], "Ernestina")]

def linear_search(array, search)
  array.each_with_index do |item,index|
   if item.first_name == search
    return index
   end
  end
  return -1
end



# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE

# My Tests:
def assert(actual, expected, message)
  puts message
  puts actual == expected
end

# student1 = Student.new([0], "Test Man")
# assert(student1.first_name, "Test Man", "Creates student correctly.")

# Initial Tests:

p students[0].first_name == "Alex"
p students[0].scores.length == 5
p students[0].scores[0] == students[0].scores[4]
p students[0].scores[3] == 0


# Additional Tests 1:

p students[0].average == 80
p students[0].letter_grade == 'B'

# Additional Tests 2:

p linear_search(students, "Alex") == 0
p linear_search(students, "NOT A STUDENT") == -1





# Reflection