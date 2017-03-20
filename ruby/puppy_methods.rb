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





end



Puppy.new.fetch("rubber")
Puppy.new.speak(2)
Puppy.new.roll_over
Puppy.new.dog_years(5)
Puppy.new.shake



