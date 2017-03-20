=begin
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do 
      puts "Woof!"
   end
  end

  def roll_over
    p "rolls over"
  end

  def dog_years(int)
    p int * 7
  end

  def shake 
    p "Extends paw to shake"
  end

  def initialize
    p "Initializing new puppy instance..."
  end



end

Puppy.new.fetch("rubber")
Puppy.new.speak(2)
Puppy.new.roll_over
Puppy.new.dog_years(5)
Puppy.new.shake
=end

class Aardvark
  def initialize
    p "This is an Aardvark"
  end

  def eats_ants(int)
    int.times do
      puts "Aardvark ate #{int} ants."
  end
  end

  def sleeps
    p "Aardvark is asleep."
  end


end

aardvarks = []

50.times do
  aardvarks << Aardvark.new
end

aardvarks.each do |aardvark|
  aardvark.eats_ants(4)
  aardvark.sleeps
end

p aardvarks
