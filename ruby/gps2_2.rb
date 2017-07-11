# GPS 2.2
# Dan & Jane, guided by Regina
# July 10, 2017
=begin
Pseudocode
1. Create a new list
  -hash
2. Add item w/ quantity
3. Remove an item from list (1.)
4. Update quantities
  -edit the value in the hash
5. Print list (make it look nice)
=end
# I. Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
# 1. Split string into separate items
# 2. Enter them into the hash
# 3. Default value will be 1
# 4. print the list to the console [can you use one of your other methods here?]
# output: hash
def create_list(items)
  grocery_hash = {}
  grocery_items = items.split(' ')
  grocery_items.each { |x|
    grocery_hash[x] = 1
  }
  grocery_hash
end
# II. Method to add an item to a list
# input: list, item name, and optional quantity
# steps:
# 1. Get user input for what item to add and what quantity of it to add
# 2. Item will be added as key
# 3. Quantitiy will be added as value
# output: updated hash
def add_item(grocery_hash, new_item, quantity = 1)
  grocery_hash[new_item] = quantity
  grocery_hash
end
# III. Method to remove an item from the list
# input: item, that's already a key in hash
# steps:
# 1. Print out the keys
# 2. Get user input on which item to remove
# 3. Delete the chosen key-value pair
# output: updated hash
def remove_item(grocery_hash, undesired_item)
  grocery_hash.delete(undesired_item)
  grocery_hash
end
# IV. Method to update the quantity of an item
# input: choice of item, and choice of new value
# steps:
# 1. Print keys and coresponding values
# 2. Have the user select which key they want to edit the value of
# 3. Get user input for new quantity
# 4. Update the value of the relevant key
# output: updated hash
def update_quantity(grocery_hash, item, quantity)
  grocery_hash[item] = quantity
  grocery_hash
end
# V. Method to print a list and make it look pretty
# input: user's decision to print
# steps:
# 1. If user input is the print command
# 2. Display list in readable fashion
# output: Readable grocery list
def print_list(grocery_hash)
  puts "You need to buy:"
  grocery_hash.each { |food, quantity|
    puts "#{quantity} -- #{food}"
  }
end
# Driver Code
puts "What do you want?"
items = gets.chomp
grocery_hash = create_list(items)
p grocery_hash
puts "What would you like to add?"
new_item = gets.chomp
puts "How many?"
quantity = gets.chomp
grocery_hash = add_item(grocery_hash, new_item, quantity)
p grocery_hash
puts "What items would you to remove?"
undesired_item = gets.chomp
grocery_hash = remove_item(grocery_hash, undesired_item)
p grocery_hash
puts "What item's quantity would you like to update?"
modified_key = gets.chomp
puts "What is the new quantity?"
modified_value = gets.chomp
grocery_hash = update_quantity(grocery_hash, modified_key, modified_value)
p grocery_hash
puts "Here is your list!"
print_list(grocery_hash)
#puts "What do you want?"
#items = gets.chomp
#create_list(items)

# Reflection:
# What did you learn about pseudocode from working on this challenge?
  # Pseudocode is nice when it is specific and I like it when it is split up into small sections so that each section can reflect the code that is following.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # I'm not sure how you would use an array- there needs to be more information.

# What does a method return?
  # It is helpful for the method to return the value instead of a printed output so that information can be passed through different methods smoothly.

# What kind of things can you pass into methods as arguments?
  #Any kind of information: arrays, hashes, strings, integers, whatever

# How can you pass information between methods?
  # You can use instance variables or just pass data in and out of methods directly using the info as a parameter.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # I liked that this challenge helped solidify my understanding of passing info through methods and using driver code separately from the methods themselves.