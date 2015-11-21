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

my_list = [
"Jack Abernethy",
"Mohammad Amin",
"Zollie Barnes",
"Reuben Brandt",
"Dana Breen",
"Bret",
"Breton Burnett",
"Saundra Vanessa Casneda",
"Luis De Castro",
"Nicolette Chambers",
"Kerry Choy",
"Nick Davies",
"KB DiAngelo",
"Katherine DiAngelo",
"Adrian Diaz",
"David Diaz",
"Bob Dorff",
"Michael Du",
"Paul Dynowski",
"Jenna Espezua",
"Sean Fleming",
"Jennifer Gilbert",
"Marcel Haesok",
"Albert Hahn",
"Arthur Head",
"Jonathan Huang",
"Thomas Huang",
"Alex Jamar",
"Kevin Jones",
"Steven Jones",
"Cole Kent",
"Coleby Kent",
"Caroline",
"Caroline Kenworthy",
"Calvin Lang",
"Yi Lu",
"David Ma",
"Charlotte Manet",
"Sean Massih",
"Tom McHenry",
"Alex Mitzman",
"Lydia Nash",
"Brenda Nguyen",
"Matthew Oppenheimer",
"Mason Pierce",
"Joe Plonsker",
"Mira Scarvalone",
"Joseph Scott",
"Chris Shahin",
"Benjamin Shpringer",
"Lindsey Stevenson",
"Phil Thomas",
"Philip Thomas",
"Gary Tso",
"Ting Wang",
"Clinton Weber",
"Monique Williamson",
"Regina Wong",
"Hanah Yendler"]

assign_groups(my_list)


