# Get user input for questionnaire and convert to proper data type

puts "What is your name?"
  name = gets.chomp
puts "What is your age?"
  age = gets.chomp.to_i
puts "Total area size in sq/ft"
  size = gets.chomp.to_i
puts "How many children do you have?"
  children = gets.chomp.to_i
puts "Preferred decor theme style?"
  decor_theme = gets.chomp
puts "Are you on a budget? (yes/no)"
  budget = gets.chomp.downcase == "yes"
puts "Any additional information:"
  information = gets.chomp

# Store input into a hash with set key value pairs
form = {
  name: name,
  age: age,
  size: size,
  children: children,
  decor_theme: decor_theme,
  budget: budget,
  information: information
}

# Print clients initial inputs
p form

# Ask if they would like update their form.
puts "Would you like to make any changes to your form? (yes/no)"
  update = gets.chomp.downcase == "yes"
  if update == FALSE
    puts "Thanks for filling out this survey!"
  else  
    puts "What value would you like to update?"
    p "name | age | size | children | decor | budget | information |"
    form_key = gets.chomp.downcase
    if form_key == "name"
      puts "What do you want name to be changed to?"
      form[:name] = gets.chomp
    elsif form_key == "age"
      puts "What do you want age to be changed to?"
      form[:age] = gets.chomp
    elsif form_key == "size"
      puts "What do you want size to be changed to?"
      form[:size] = gets.chomp
    elsif form_key == "children"
      puts "What do you want children to be changed to?"
      form[:children] = gets.chomp
    elsif form_key == "decor"
      puts "What do you want decor to be changed to?"
      form[:decor_theme] = gets.chomp
    elsif form_key == "budget"
      puts "What do you want budget to be changed to?"
      form[:budget] = gets.chomp
    else form_key == "information"
      puts "What do you want information to be changed to?"
      form[:information] = gets.chomp
    end
  p form
 end