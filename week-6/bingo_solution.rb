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
new_game.display_board

#Reflection