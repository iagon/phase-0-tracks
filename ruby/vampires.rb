def employee_eval()

  puts "What is your name?"
    name = gets.chomp
  puts "How old are you? What year were you born? (age,year)"
    age = gets.chomp
    age = age.split(',').map {|x,y| x.to_i y.to_i}
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
  
  
  if (age) && (gb == "yes" || health == "yes")
    puts "Probably not a Vampire."
  elsif (age) && (gb != "yes" || health != "yes")
    puts "Probably a vampire."
  elsif (age) && (gb != "yes" && health != "yes")
    puts "Almost certainly a vampire"
  elsif name == "Drake Cula"
    puts "Definitely a vampire"
  elsif name == "Tu Fang"
    puts "Definitely a vampire"
    
  end
end

puts employee_eval()










=begin def string_add(string)
  arr = string.split(',').map {|i| Integer(i) }
  if arr[0] + arr[1] != 2017
    puts "liar"
  else
    puts "cookies"
  end
  
end

puts string_add("9,2008") 
=end




