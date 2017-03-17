def flip_string(str)
  arr = str.split
  arr.reverse.join(" ")
end

def vowel_change(str)
  flip_string(str).tr!("aeiouAEIOU", "eiouaEIOUA")
end

def consonant_change(str)
  vowel_change(str).tr!('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB')
end




puts "Enter your spy name(type 'quit' to exit):"
name = gets.chomp

p "Your #{name} is actually #{consonant_change(name)}"


