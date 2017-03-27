class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age


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

def celebrate_birthday 
  @age = @age + 1
end

def get_mad_at(reindeer_name)
  @reindeer_ranking.delete(reindeer_name)
  @reindeer_ranking << reindeer_name
end

end

=begin 
DRIVER CODE
santa = Santa.new
santa.speak
santa.eat_milk_and_cookies("Peanut Butter")
santa.get_mad_at("Dasher")

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

example_ethnicities.length.times do |i|
  santas << Santa.new(example_genders[i], example_ethnicities[i])
end

p santas

puts santas[2].age
puts santas[2].celebrate_birthday
puts santas[2].age
puts santas[2].ethnicity
puts santas[2].gender = "Crazy"
=end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

150.times do |i|
  santa_create = Santa.new(example_genders.sample, example_ethnicities.sample)
  santa_create.age = rand(0..140)
  puts "Santa # #{i}: is #{santa_create.age} years old and identifies as a #{santa_create.ethnicity}, #{santa_create.gender}."

end
