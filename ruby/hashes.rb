
=begin
Get client details:
client's name
age
number of children
decor theme
=end

=begin
	
Prompt the designer/user for all of this information.
Convert any user input to the appropriate data type.
Print the hash back out to the screen when the designer has answered all of the questions.
Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
Print the latest version of the hash, and exit the program.
=end

#Get client details:
#Prompt the designer/user for all of this information.
#Convert any user input to the appropriate data type.

#client's name?
puts "What's your name?"
name = gets.chomp.to_s

#client's age?
puts "How old are you?"
age = gets.chomp.to_i

#client's number of children?
puts "How many children do you have?"
children = gets.chomp.to_i

#client's decor theme?
puts "What decor do you like?"
theme = gets.chomp.to_s


  client = {
    name: name,
    age: age,
    children: children,
    theme: theme
}

#Print the hash back out to the screen when the designer has answered all of the questions.
p client

#Give the user the opportunity to update a key (no need to loop, once is fine). After all, sometimes users make mistakes! If the designer says "none", skip it. But if the designer enters "decor_theme" (for example), your program should ask for a new value and update the :decor_theme key. (Hint: Strings have methods that will turn them into symbols, which would be quite handy here.) You can assume the user will correctly input a key that exists in your hash -- no need to handle user errors.
p "Would you like to update any information? If yes, would you like to update your name, age, number of children, or decor theme? If there are no updates needed, state: none."
input = gets.chomp

  if input == "name"
    puts "Please give updated name."
    name_edit = gets.chomp
    client[:name] = name_edit
  elsif input == "age"
    puts "Please give updated age."
    age_edit = gets.chomp
    client[:age] = age_edit
  elsif input == "number of children"
  puts "Please give updated number of children."
  children_edit = gets.chomp
  client[:children] = children_edit
  elsif input == "decor theme"
  puts "Please give updated decor theme."
  theme_edit = gets.chomp
  client[:theme] = theme_edit
  elseinput == "none"
  puts "All information is correct? Great!Thank you!"
end
#Print the latest version of the hash, and exit the program.
p client 
