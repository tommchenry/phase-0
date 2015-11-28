# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# Pseudocode

# Input: An integer input by the user.
# Output: A symbol, depending on whether the guess was too low, too high, or correct.
# Steps:
# 1) The game should initialize by creating some integer that will be the correct answer.
# 2) The game should ask the user for a guess.
# 3) The game should take the guess and check it against the answer.
# 4) IF the guess is too high, the game should tell the user it is too high.
# 5) IF the guess is too low, the game should tell the user it is too low.
# 6) IF the guess is correct, the game should tell the user the guess is correct and mark itself as solved.


# Initial Solution

# class GuessingGame
#   def initialize(answer)
#     #This method should take an integer answer and create an object with that integer as the answer
#     @last_guess = nil
#     @answer = answer
#   end

#   def guess(guess)
#     @last_guess = guess
#     if guess > @answer
#       return :high
#     end
#     if guess < @answer
#       return :low
#     end
#     if guess == @answer
#       p :correct
#     end
#   end

#   def solved?
#     if @last_guess == @answer
#       p true
#     else
#       p false
#     end
#   end
# end

# game = GuessingGame.new(10)
# game.solved?   # => false
# game.guess(5)  # => :low
# game.guess(20) # => :high
# game.solved?   # => false
# game.guess(10) # => :correct
# game.solved?   # => true

# Refactored Solution

class GuessingGame
  def initialize(answer)
    @last_guess = nil
    @answer = answer
  end

  def guess(guess)
    @last_guess = guess
    if guess > @answer
      return :high
    end
    if guess < @answer
      return :low
    end
    if guess == @answer
      p :correct
    end
  end

  def solved?
    @last_guess == @answer ? true : false
  end
end

# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#   Instance variables and methods represent the characteristics and actions of real-world objects. If an object is like a noun, instance variables are like the words that describe that noun -- here what the answer to the game is, whether the game has been solved, what the guesses are. Instance methods, then, are like the special actions that particular object can do. In this example, this means it can process guesses and know whether or not it has been solved.
# When should you use instance variables? What do they do for you?
#   You should use instance variables when you are creating a specific object from a class. Instance variables allow you to keep that particular object's state as a series of values and re-use it as needed through other methods.
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
#   Flow control is the process of controlling the way a computer flows through a program, restricting what comes out based on what has come in. In this challenge, we use flow control to return certain values in the guess function, depending on if the guess is high, low, or correct. We also use it to return true or false, depending on whether or not the answer of the game has been guessed by the user. I didn't struggle with flow control in the challenge.
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
#   This code returns symbols because they are unique and immutable. We don't need multiple instances of a string "High" or "Low," we just need the single instance of each, which is then used when necessary. Also the state of high or low will not change -- we don't need to change the name of the thing returned, nor do we need different behavior to determine high or low. The symbol for high is always for when the number is too high, and hte symbol for low is always for when the number is too low. Symbols are quick to access because there's only ever one copy and it can't change. Ruby even talks to itself via symbols.