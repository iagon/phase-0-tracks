

puts "How many employees will be processed:"
  processed = gets.chomp.to_i
# Generate iterator for while loop
   i=0 
   while i < processed

puts "What is your name?"
name = gets.chomp.downcase

puts "How old are you? What year were you born? (age,year)"
age = gets.chomp
=begin Used google to help get this result. First Split the string array at "," to make an array. 
Originally I tried .each method, but it didn't have intended effect. From what I gathered 
map/collect will make a new array (map! will change original), while each just runs every 
element array in through |var|. 
=end 
 age = age.split(',').map {|x| x.to_i}
 age = age[0] + age[1]
   if age == 2016
      age = TRUE
    elsif age == 2017
      age = TRUE
    else
      age = FALSE
   end

puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
g_bread = gets.chomp.downcase
  
  while g_bread != "yes" && g_bread != "no"
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  g_bread = gets.chomp.downcase
  end

puts "Would you like to enroll in the company's health insurance? (Yes/No)"
health = gets.chomp.downcase
  
  while health != "yes" && health != "no"
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  garlic_bread = gets.chomp.downcase
  end
  
# Had hard time figuring out how to get "Results inconclusive". Initially tried to set it if all conditions failed. 
# Setting it as default was much simpler.
  is_vamp = "Results Inconclusive"

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

