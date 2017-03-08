puts "How many employees will be processed:"
  processed = gets.chomp.to_i
  
  i=0 
  while i < processed

  puts "What is your name?"
    name = gets.chomp.downcase
  puts "How old are you? What year were you born? (age,year)"
    age = gets.chomp
    age = age.split(',').map {|x| x.to_i}
    age = age[0] + age[1]
     if age == 2016
       age = TRUE
     elsif age == 2017
       age = TRUE
     else
       age = FALSE
    end
  puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
    gb = gets.chomp
  puts "Would you like to enroll in the company's health insurance? (yes/no)"
    health = gets.chomp

    is_vamp = is_vamp
  if age && (gb == "yes" || health == "yes")
    is_vamp = "Probably not a Vampire."
    is_vamp = is_vamp
  end 
  
  if !age && (gb != "yes" || health != "yes")
    is_vamp = "Probably a vampire."
    is_vamp = is_vamp
  end
  
  if !age && (gb != "yes" && health != "yes")
    is_vamp = "Almost certainly a vampire"
    is_vamp = is_vamp
  end
  
  if  name == "drake cula" 
    is_vamp = "Definitely a vampire"
    is_vamp = is_vamp
  elsif name == "tu fang"
    is_vamp = "Definitely a vampire"
    is_vamp = is_vamp
  end

#if is_vamp != is_vamp
  # is_vamp = "Results inconclusive"
#end
 puts "Please name allergies one at a time, when finished type 'done'."
  allergies  = gets.chomp.downcase
  
 until allergies == "done" do
  puts "Please name allergies one at a time, when finished type 'done'."
   allergies  = gets.chomp.downcase
  if allergies == "sunshine" then 
     is_vamp = "Probably a vampire"
     break
  end
end
 
puts is_vamp

i += 1
end



