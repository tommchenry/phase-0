# Input: An array of names
# Output: An array with sub-arrays for each group, no greater than 5 and no smaller than 4 members per group, no matter the size of the initial input.
# Each name in the list, assign a number as a value to each name

def assign_groups(list)
  final_list = []
  list = list.sample(list.length)
  leftover = 5 - list.length % 5
  # Makes the number of 4 person groups based on divisibility by 5
  if leftover != 5
    for num in 0...leftover
      final_list << list.shift(4)
    end
  end
   # Makes 5 person groups until collection is empty
  while list.length > 0
    final_list << list.shift(5)
  end
   # Display finalized groups
  return_string ="Chorus Frogs 2016 Accountability Groups\n\n"
  for num in 0...final_list.length
    return_string += "Group #{num + 1} is #{final_list[num][0]}, #{final_list[num][1]}, #{final_list[num][2]}"
    if final_list[0][4] != nil
    return_string += ", #{final_list[num][3]}, and #{final_list[num][4]}.\n"
    else
    return_string += ", and #{final_list[num][3]}.\n"
  end
  end
  puts return_string
end

my_list = ["Jack Abernethy","Mohammad Amin","Zollie Barnes","Reuben Brandt","Dana Breen","Bret","Breton Burnett","Saundra Vanessa Casneda","Luis De Castro","Nicolette Chambers","Kerry Choy","Nick Davies","KB DiAngelo","Katherine DiAngelo","Adrian Diaz","David Diaz","Bob Dorff","Michael Du","Paul Dynowski","Jenna Espezua","Sean Fleming","Jennifer Gilbert","Marcel Haesok","Albert Hahn","Arthur Head","Jonathan Huang","Thomas Huang","Alex Jamar","Kevin Jones","Steven Jones","Cole Kent","Coleby Kent","Caroline","Caroline Kenworthy","Calvin Lang","Yi Lu","David Ma","Charlotte Manet","Sean Massih","Tom McHenry","Alex Mitzman","Lydia Nash","Brenda Nguyen","Matthew Oppenheimer","Mason Pierce","Joe Plonsker","Mira Scarvalone","Joseph Scott","Chris Shahin","Benjamin Shpringer","Lindsey Stevenson","Phil Thomas","Philip Thomas","Gary Tso","Ting Wang","Clinton Weber","Monique Williamson","Regina Wong","Hanah Yendler"]

assign_groups(my_list)


# What was the most interesting and most difficult part of this challenge?
#   The most interesting part of the challenge for me was figuring out a simple way to express the idea of dividing up the list of people to try to produce groups of five members and, failing that, knowing how many groups of four would be needed to make the rest groups of five. The most difficult part was knowing how to actually populate the groups correctly. That part seemed so straightforward, yet I really struggled to get the methods to do what I wanted them to do, and finally wound up not using any of the special methods.
# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#   I'm not sure. My pseudocode for this challenge was only correct up to a point. I hadn't realized it, but my thinking was fuzzier than it could have been for actually populating the individual groups because this seems like an easy task to ask for. I wound up getting hung up on that step and researching and implementing many different methods. I also wrote a gigantic successful solution that used no special methods or even really any flow control.
# Was your approach for automating this task a good solution? What could have made it even better?
#   My solution was okay, but I feel like there's some inefficiency on my part that I can't resolve because I have to call two separate push statements, one making some number of 4-person groups and then one making the rest into five-person groups. Those two bits are so similar to themselves, that it feels a bit like I'm repeating code.
# What data structure did you decide to store the accountability groups in and why?
#   I stored the accountability groups as sub arrays of an array of all the groups. I really struggled between making it an array and making a hash with a key for every name and a value of the number of a group. If I have any leftover time, I might still attempt this solution. Storing the groups as arrays within a larger array appealed to me because the tabular structure of the data matched how I thought of the groups in my head: subcollections (groups) of the larger collection (all members). I'm not crazy about having to use two coordinates to call an individual member's name, but the implementation is pretty straightforward.
# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
# In the process of refactoring my initial solution, I learned that the new Ruby methods I'd deployed were actually unnecessary to what I was doing. Most of the refactoring came from finding simpler ways to say what I'd been saying with them. I no longer needed .select and .flatten (called multiple times). The one method I really liked using was .sample with a value of the length of the list to immediately produce a randomized array of unique values. That was a huge time-saver.
