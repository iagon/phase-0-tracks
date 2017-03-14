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
  budget = gets.chomp == "yes"
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