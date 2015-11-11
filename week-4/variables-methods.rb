puts "What is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp
puts "Hello, " + first_name + " " + middle_name + " " + last_name + "!"
puts "Hey, " + first_name + ", what's your favorite number?"
fav_num = gets.chomp
fav_num = fav_num.to_i + 1
puts "Hmmm... I don't know, have you considered " + fav_num.to_s + ", though?"