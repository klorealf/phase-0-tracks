# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Use .split(' ') the string into an array
  # Iterate over the array and store its values as keys in a new hash with all pairings set a default ("not give", nil)
  # Set default quantity
  # Print the list to the console
  # Output the has to console so that method evaluates to the hash
# output: hash of item key values with quantity
# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Create that takes a list (hash) and use .store to put (item name, optional quantity) into the hash
# output: the new hash with the added item
# Method to remove an item from the list
# input: list, item name
# steps: Create a method that deletes a key from a hash
# hash.delete(item name)
# output: an update hash with the item deleted
# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Create a method that takes a hash and replaces for the key of item, replaces the value with the new value fed into the method
# output: an updated hash
# Method to print a list and make it look pretty
# input: list (hash)
# steps: Iterate over the hash and print its keys and values in a user friendly way
# output: prints the list(puts)
#Create a list
require 'colorize' #trick intro by GPS guide
def create_list(list)
  new_array = list.split(' ')
  grocery_list = {}
  new_array.each { |item| grocery_list[item] = "Not given" }
  p grocery_list
end
grocery_list = create_list("carrots apples cereal pizza")
def add_item(list, new_item, quantity = "Not given")
  list[new_item] = quantity
  list
end
add_item(grocery_list, "lemonade", 2)
add_item(grocery_list, "tomatoes", 3)
add_item(grocery_list, "onions", 1)
add_item(grocery_list, "ice cream", 4)
p grocery_list
def remove_item(list, item)
  list.delete(item)
  list
end
p remove_item(grocery_list, "lemonade")
def update_quantity(list, item, new_quantity)
  list[item] = new_quantity
  list
end
p update_quantity(grocery_list, "ice cream", 1)
def print_list(list)
  list.each { |item, quantity| puts quantity.to_s + " " + item.blue }
end
print_list(grocery_list)