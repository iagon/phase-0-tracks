class Santa

def speak 
  puts "Ho, ho, ho! Haaaappy holidays!"
end

def eat_milk_and_cookies(cookie_type)
  puts "That was a good #{cookie_type}"
end

def initialize(gender, ethnicity)
  puts "Initializing Santa instance..."
  @gender = gender
  @ethnicity = ethnicity
  @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  @age = 0

end
end

=begin
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas


santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Peanut Butter")
=end
