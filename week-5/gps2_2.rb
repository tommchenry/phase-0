# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # [fill in any steps here]
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def create_list(list_string)
  list_array = list_string.split(" ")

  list_hash = {}
  list_array.each do |item|
    list_hash[item] = 1
  end
  p list_hash
end


my_list = create_list( "carrots apples cereal pizza")


# Method to add an item to a list
# input: item name and optional quantity
# steps:
# output:

def add_item(list, name, qty=1)
  list.has_key?(name) ? list[name] += qty : list[name] = qty
  p list
end

add_item(my_list, "cereal", 100)


# Method to remove an item from the list
# input: my_list, item to remove
# steps:
# output:

def remove_item(list, item)
  list.has_key?(item) ? list.delete(item) : (return puts "Sorry!  That item doesn't exist.")
  p list
end

remove_item(my_list, "tacos")

# Method to update the quantity of an item
# input: my_list, the item, new quantity
# steps:
# output: new my_list

def update_qty(list, name, qty)
  list[name] = qty
  p list
end

update_qty(my_list, "apples", 400)

# Method to print a list and make it look pretty
# input: my_list
# steps: iterate over hash, for each pair, puts name : quantity
# output: a pretty list

def print_list(list)
  list.each do |key,value|
    puts "#{key}: #{value}"
  end
end

print_list(my_list)

=begin

What did you learn about pseudocode from working on this challenge?
  I learned that working out exactly what the input and output are going to be is an essential step in the pseudocode process. Even though this came up a little last week, this challenge really underlined the point by switching between different types of objects.
What are the tradeoffs of using Arrays and Hashes for this challenge?
  We decided to use a hash on this challenge for a number of reasons. First, the order of the items on our list is not as important as tracking the quantity of the individual items. This means that an array would need individual values for each apple added. By using a hash we could just set the quantity as the value and the item as the key. This means there's only ever one "apple" in the list, whether we need 1 or 10,000.
What does a method return?
  A method returns whatever you either explicitly tell it to return or the value of the last evaluated expression.
What kind of things can you pass into methods as arguments?
  You can pass any kind of object into a method as an argument from strings to arrays and hashes.
How can you pass information between methods?
  You can pass information between methods via return statements and arguments.
What concepts were solidified in this challenge, and what concepts are still confusing?
  This challenge solidified for me using different kinds of value returns and creating hash keys through iteration. Our guide also helped us work out a ternary condition, but to me the need for a parenthetical return and puts together is still a little fuzzy, so I'll need to research it more before getting comfortable with the concept.
=end