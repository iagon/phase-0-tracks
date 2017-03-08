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
  g_bread = gets.chomp
    while g_bread != "yes" && g_bread != "no"
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
    g_bread = gets.chomp
    end

  puts "Would you like to enroll in the company's health insurance? (yes/no)"
    health = gets.chomp
    while health != "yes" && health != "no"
    puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
    garlic_bread = gets.chomp
    end

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


  allergies  = " "
  
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



