class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times {puts "Woof!"}
  end









end



p Puppy.new.fetch("rubber")
p Puppy.new.speak(3)



