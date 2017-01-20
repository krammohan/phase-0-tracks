# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Store input as string
  # Split string into words into array
  # For each item in the list
  	# set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash

def create_list(items)
  items = items.split(' ')
  list = {}
  items.each { |item|
    list[item] = 1
  }
  print_list(list)
end

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: Create new entry in hash with key as item and value as quantity
# output: Return new list

def add_item(list, item, qty = 1)
  list[item] = qty
end

# Method to remove an item from the list
# input: list, item name
# steps: Delete the entry in the hash that has the given item as a key
# output: Return new list

def remove_item(list, item)
  list.delete(item)
end

# Method to update the quantity of an item
# input: list, item name, new quantity
# steps: Set the quantity of the given item in the list to the new quantity
# output: Return new list

def update_quantity(list, item, new_qty)
  list[item] = new_qty
end

# Method to print a list and make it look pretty
# input: list
# steps: For each item in the list
  # output: Print out "The item X has a quantity of Y"

def print_list(list)
  list.each { |item, quantity|
    puts "The item #{item} has a quantity of #{quantity}."
  }
end

list = create_list("carrots eggs apples")
add_item(list, "bread")
p list
remove_item(list, "carrots")
p list
add_item(list, "eggs", 3)
p list
print_list(list)