# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# p array[1][2][0]
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      y += 5
    end
  else
    x += 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  #   1st level array values as a name
  if name.kind_of?(Array)
    #     Check if 1st level value is an array and if it is
    name.map! do |also_name|
      #       Map the second level array values as also_name
      if also_name.kind_of?(Array)
        #         Check if second level value is an array and if it is
        also_name.map! do |also_also_name|
          # Map the third level value as also_also_name
          also_also_name += "ly"
          # Add ly to also also name
        end
        # End the name
      else
        also_name += "ly"
      end
    end
  else
    name += "ly"
  end
end
p startup_names


# What are some general rules you can apply to nested arrays?
#   Nested arrays work just like regular, linear arrays with the exception that they need additional coordinates to return a given value. If you get stuck, it helps to go to the final level of the array and build back outward, tacking on indexes from right to left, rather than working down (from left to right).
# What are some ways you can iterate over nested arrays?
#   You can iterate over nested arrays with the same enumerable methods that you use on larger arrays, you just need to be careful to know what information you're passing the code blocks, whether it's a string, an integer, or yet another nested level of arrays or hashes.
# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#   My pair and I talked about doing something like .flatten on the final bonus challenge but decided it might not be in keeping with the spirit of the challenge, so instead we stuck to purely .each and .map, forcing us to deal with each level of subarray in turn (similar to the example given in the challenge page). We used .map! because it was a good destructive option that would return an array when arrays were what we needed to be returned. Originally we had written the solution with .each, which would produce correct values by iterating through the array, but didn't produce an array of correct answers.