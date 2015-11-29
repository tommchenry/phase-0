# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  # Create a collection of the letters B I N G O and a second collection of the numbers from 1-100
  # Select a letter from the BINGO collection
  # Select a number from the 1-100 collection

# Check the called column for the number called.
  #fill in the outline here
  # Look at the called letter
  # FOR each collection object in the board, check that letter's position for the number called
  # IF that number is in the column, change the value of that cell to an X

# Display a column to the console
  #fill in the outline here
  # Look at the column position in each row
  # Print this value to the console

# Display the board to the console (prettily)
  #fill in the outline here
  # Display each letter of B I N G O
  # Line break
  # Display a | then a number then another |
  # At the end of one collection object, add a line break

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#     @call_letter = nil
#     @call_number = nil
#   end

#   def call
#     letters = ["B", "I", "N", "G", "O"]
#     @call_letter = letters.sample
#     @call_number = rand(101)
#     puts "I call #{@call_letter}-#{@call_number}."
#   end

#   def check_column
#     case @call_letter
#     when "B" then col_num = 0
#     when "I" then col_num = 1
#     when "N" then col_num = 2
#     when "G" then col_num = 3
#     when "O" then col_num = 4
#     end
#     for row in 0..4
#       if @bingo_board[row][col_num] == @call_number
#         @bingo_board[row][col_num] = "X"
#       end
#     end
#   end

#   def display_board
#     puts "| B  || I  || N  || G  || O |"
#     puts "-----------------------------\n"
#     for column in 0..4
#       for row in 0..4
#         print "| #{@bingo_board[column][row]} |"
#       end
#       print "\n"
#       puts "-----------------------------"
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @call_letter = nil
    @call_number = nil
  end

  def call
    letters = ["B", "I", "N", "G", "O"]
    @call_letter = rand(5)
    @call_number = rand(101)
    puts "I call #{letters[@call_letter]}-#{@call_number}."
  end

  def check_column
    @bingo_board.each do |row|
      if row[@call_letter] == @call_number
        row[@call_letter] = "X"
      end
    end
  end

  def display_board
    puts " | B  | I  | N  | G  | O  |"
    puts " ---------------------------\n"
    for column in 0..4
      for row in 0..4
        print " | #{@bingo_board[column][row]}"
      end
      print " |\n"
      puts " --------------------------"
    end
  end

  def create_board
    # Traditionally the pattern is like this: "B" (numbers 1–15), "I" (numbers 16–30), "N" (numbers 31–45), "G" (numbers 46–60), and "O" (numbers 61–75) with a free space in the middle.
    @bingo_board = []
    @bingo_board << (1..15).to_a.sample(5)
    @bingo_board << (16..30).to_a.sample(5)
    @bingo_board << (31..45).to_a.sample(5)
    @bingo_board << (46..60).to_a.sample(5)
    @bingo_board << (61..75).to_a.sample(5)
    @bingo_board = @bingo_board.transpose
    @bingo_board[2][2] = "X"
    display_board
  end
end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call
new_game.check_column
# new_game.display_board
new_game.create_board

#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
#   Pseudocoding this challenge wasn't especially difficult, but there were lots of parts. In fact, in pseudocoding the challenge, I saw some places where the outline provided made separate methods for accessing a value and then changing a value, and I simplified these two into one method. To keep from getting sunk in too much pseudocode at once, I would write pseudocode for one method, then actually code it, testing my work, rather than doing all the pseudocode at once. Since the methods are all independent, this allowed me to vary my style of thinking and working and made the problem seem less daunting.
# What are the benefits of using a class for this challenge?
#   Using a class allows us to collect all the related methods in one place and easily share instance variables between those methods to keep the game state. It also makes the code easier ot read and maintain, as the use of a class organizes all the accompanying variables and methods in one place and under one heading.
# How can you access coordinates in a nested array?
#   To access a nested array, you use multiple indexes, one for each array that you're travelling through. In the case of this challenge, we're pulling values from an array within another array, which means that the calls always look like @bingo_board[first array index][second array index].
# What methods did you use to access and modify the array?
#   I used a .each method to check through every value in a given column, looking for the called number. If it finds the called number, it replaces the value with the string "X." I also used .sample to get 5 unique numbers from the array of values in the create_board method. Originally I had used .rand, but this can produce a board with squares that have the same values. I also used .transpose to exchange the two indexes of the squares once the columns had been generated.
# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#   I used .transpose in this challenge, which I'd never seen or used before. I'd written a couple of loops that performed the same function and was able to remove all of that code in favor of a single method. So .transpose works on an array by assuming that you have an array of subarrays. The method switches each item's pair of indexes, essentially flipping the rows and columns if you think of it as a table.
# How did you determine what should be an instance variable versus a local variable?
#   I used instance variables only for those variables that I would need in multiple methods -- ones that were somehow an essential part of the object created by the class. For example, the tabular data of the board itself is needed in every method for one thing or another, so it works best as an instance variable (and would be difficult to implement otherwise). However, the array with the letters B I N G O is only used locally in the .call method, as we only need to call values from that array when we use that method, nowhere else. It can be thrown away as soon as the method has finished running.
# What do you feel is most improved in your refactored solution?
#   I really liked the shift I figured out to get rid of the case statement in order to access the columns during the .check_column method. It simplified a lot of code and streamlined away an unnecessary detour. The simplicity also got me thinking about how to use a .each instead of a for loop to perform the same work.