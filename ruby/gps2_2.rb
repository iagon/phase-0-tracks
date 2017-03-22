#This for Release 0
# Worked with Omid Fakiri
#Pseudocode
=begin
Method to create a list
input: string of items separated by spaces (example: "carrots apples cereal pizza")
steps: 
  create a def method(enter variable name here)
  split the items into an array
  create an empty hash 
  iterate the items into the empty hash
  set default quantity
  print the list to the console [can you use one of your other methods here?]
output: [what data type goes here, array or hash?]

Method to add an item to a list
input: list, item name, and optional quantity
steps: 
  create the add method
  add input as the parameter (set quantity to 1 as default)
  index the item to the list and equal it to the quantity

output: provide a hash to include just the added items

Method to remove an item from the list
input: list, item name
steps:
  create the remove method
  add input as the parameter (list, item name)
  delete the desired item(s)
output: provide a hash to update the grocery list by not showing the removed items

Method to update the quantity of an item
input: list, item name, quantity
steps: 
  create an update method
  add input as the parameter (list, item name, quantity)
  index the item to the list and equal it to the new quantity
output: provide a hash to update the grocery list to display new quantities

Method to print a list and make it look pretty
input: list
steps: 
  iterate through hash
  print the keys and values
output: "key: value" for EACH item
=end


def create_list(items)
  grocery_list = {

}   
  array = items.split(" ")
  array.each {|x| grocery_list[x] = 1}
  p grocery_list
end

def add(list, item_name, quantity = 1)
  list[item_name] = quantity
end

#list = create_list("carrots apples")
#add(list, "lemonade", 2)

def remove(list, item_name)
  list.delete(item_name)
end

#remove(list, "apples")
#p list

def update(list, item_name, quantity)
  list[item_name] = quantity
end

#update(list, "carrots", 3)
#p list

def final(list)
  puts "Grocery List"
  puts "*"*12
  list.each {|item_name, quantity| puts "#{item_name}: #{quantity}"}
end

#final(list)

list = create_list("")
add(list, "Lemonade", 2)
add(list, "Tomatoes", 3)
add(list, "Onions")
add(list, "Ice Cream", 4)
remove(list, "Lemonade")
update(list, "Ice Cream", 1)
final(list)

#This is for Release 4
=begin
What did you learn about pseudocode from working on this challenge?
  We learned how to identify inputs and how to organize the codes.  We learned
  how to game-plan by using pseudocode, and not using actual code in the pseudocode.
What are the tradeoffs of using arrays and hashes for this challenge?
  We used arrays to organize our list of items.  And, we used hashes to attach the 
  quantity of each item.
What does a method return?
  A method would typically return the final line in it, unless an explicit return is specified elsewhere.
What kind of things can you pass into methods as arguments?
  Strings, Integers and lists.
How can you pass information between methods?
 You can do this by having the methods contain at least 1 common parameter.
What concepts were solidified in this challenge, and what concepts are still confusing?
  Solidified: Being able to pass information between methods. 
  Confusing: How to implement hashes and arrays properly.
=end