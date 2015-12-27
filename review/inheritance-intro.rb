# Introduction to Inheritance

# I worked on this challenge by myself.


# Pseudocode

# add_student
# remove_student
# currently_in_phase
# graduated?
#   This method checks if the current date is later than the graduation date. If so, it returns true, else it returns false.


# Initial Solution
# require 'date'

# class GlobalCohort
#   attr_accessor :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list
#   def initialize(students, name, p0_start_date, email_list)
#     @students = students
#     @name = name
#     @p0_start_date = p0_start_date
#     @immersive_start_date = @p0_start_date + 63
#     @graduation_date = @immersive_start_date + 63
#     @email_list = email_list
#     @num_of_students = students.length
#   end

#   def add_student(name)
#     @students << name
#   end

#   def remove_student(name)
#     @students.delete(name)
#   end

#   def currently_in_phase
#     if Date.today > @p0_start_date && Date.today < @immersive_start_date
#       return 0
#     end
#     if Date.today > @immersive_start_date && Date.today < @immersive_start_date + 21
#       return 1
#     end
#     if Date.today > @immersive_start_date && Date.today < @immersive_start_date + 42
#       return 2
#     end
#     if Date.today > @immersive_start_date && Date.today < @graduation_date
#       return 3
#     end
#   end

#   def graduated?
#     if Date.today > @graduation_date
#       true
#     else
#       false
#     end
#   end
# end

# class LocalCohort < GlobalCohort
#   def initialize(name, city, students, email_list)
#     @name = name
#     @city = city
#     @students = students
#     @num_of_students = students.length
#     @email_list = email_list
#   end
# end


# Refactored Solution
require 'date'

class GlobalCohort
  attr_accessor :students, :name, :p0_start_date, :immersive_start_date, :graduation_date, :email_list
  def initialize(students, name, p0_start_date, email_list)
    @students = students
    @name = name
    @p0_start_date = p0_start_date
    @immersive_start_date = @p0_start_date + 63
    @graduation_date = @immersive_start_date + 63
    @email_list = email_list
    @num_of_students = students.length
  end

  def add_student(name)
    @students << name
  end

  def remove_student(name)
    @students.delete(name)
  end

  def currently_in_phase
    if Date.today > @p0_start_date && Date.today < @immersive_start_date
      return 0
    end
    if Date.today > @immersive_start_date && Date.today < @immersive_start_date + 21
      return 1
    end
    if Date.today > @immersive_start_date && Date.today < @immersive_start_date + 42
      return 2
    end
    if Date.today > @immersive_start_date && Date.today < @graduation_date
      return 3
    end
  end

  def graduated?
    Date.today > @graduation_date ? true : false
  end
end

class LocalCohort < GlobalCohort
  def initialize(name, city, students, email_list)
    @name = name
    @city = city
    @students = students
    @num_of_students = students.length
    @email_list = email_list
  end
end




def assert (actual, expected, message)
  puts message
  puts actual == expected
end

chorus_frogs = GlobalCohort.new(["Test 1", "Test 2"], "Chorus Frogs", Date.new(2015,10,28), ["test1@test.com","test2@test.com"])
chorus_frogs_chi = LocalCohort.new("Chorus Frogs", "Chicago", ["Test1","Test2"], ["test1@test.com", "test2@test.com"])

assert(chorus_frogs.name, "Chorus Frogs", "Correctly defines the cohort name.")
assert(chorus_frogs.p0_start_date, Date.new(2015,10,28), "Correctly defines the cohort p0 start date.")
assert(chorus_frogs.immersive_start_date, Date.new(2015,12,30), "Correctly defines the cohort immersive start date.")
chorus_frogs.add_student("Test 3")
assert(chorus_frogs.students[2], "Test 3", "Global correctly adds student.")
chorus_frogs_chi.add_student("Test 3")
assert(chorus_frogs_chi.students[2], "Test 3", "Local correctly adds student.")
chorus_frogs.remove_student("Test 1")
assert(chorus_frogs.students[0], "Test 2", "Correctly removes student.")
assert(chorus_frogs.currently_in_phase, 0, "Correctly returns phase number.")
assert(chorus_frogs.graduated?, false, "Correctly returns graduation status.")

# Reflection