
# Ask for how many employees.
puts "How many employees will be processed:"
  processed = gets.chomp.to_i
# Generate iterator for while loop
  i=0 
  while i < processed

# Ask for name
puts "What is your name?"
name = gets.chomp.downcase

# Ask age and year they were born.
puts "How old are you? What year were you born?: (age,year)"
age = gets.chomp
# Used google to help get this result. Split the string array at ",". 
# Then .map which runs the block for each element in array and outputting returned value from block.
 age = age.split(',').map {|x| x.to_i}
 age = age[0] + age[1]
   if age == 2016
      age = TRUE
    elsif age == 2017
      age = TRUE
    else
      age = FALSE
   end

# Ask if they want garlic bread
puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
g_bread = gets.chomp.downcase
# If they don't answer yes no repeat
  while g_bread != "yes" && g_bread != "no"
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  g_bread = gets.chomp.downcase
  end
# Ditto for above but for health insurance
puts "Would you like to enroll in the company's health insurance? (Yes/No)"
health = gets.chomp.downcase
  while health != "yes" && health != "no"
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  garlic_bread = gets.chomp.downcase
  end
  
# Had hard time figuring out how to put "Results inconclusive". Initially tried to set it if all parameters failed. 
# Setting it as default was much more elegant.
  is_vamp = "Results Inconclusive"

# Conditional Statements
if age && (g_bread == "yes" || health == "yes")
  is_vamp = "Probably not a Vampire."
end 

if !age && (g_bread != "yes" || health != "yes")
  is_vamp = "Probably a vampire."
end

if !age && (g_bread != "yes" && health != "yes")
  is_vamp = "Almost certainly a vampire"
end

if  name == "drake cula" || name == "tu fang"
  is_vamp = "Definitely a vampire"
end
 
# Allergies loop
allergies  = ""
 
until allergies == "done" do
 puts "Please name allergies one at a time, when finished type 'done'."
  allergies  = gets.chomp.downcase
 if allergies == "sunshine" then 
    is_vamp = "Probably a vampire"
    break
  end
end


puts is_vamp

# Increase iterator to avoid continuous loop
i += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

