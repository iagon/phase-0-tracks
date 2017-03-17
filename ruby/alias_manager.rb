=begin 
1. Define method that takes string puts it into array and flips their order and converts back to string
2. Define method that takes all vowel characters of flipped string and changes all vowels to next vowel
  - i.e. 'a' => 'e', 'e' => 'i'.... 'u' => 'a'
3. Define method that takes all consonant(cons) characters of vowel changed string and advance all cons to next cons
  - i.e. 'b' => 'c', 'c' => 'd'.... 'z' => 'b'
4. Create user interface loop to ask for name to be converted i.e 'Felicia Torres' => 'Vussit Gimodoe'
5. Store results in a data structure 
=end
 
# I used the tr method. I'm not sure if this is cheating for this exercise. 
# Below the program I will comment out an example of the program without tr. 

def flip_string(str)
  name_change = str.split
  name_change.reverse.join(" ")
end

def vowel_change(str)
  flip_string(str).tr!("aeiouAEIOU", "eiouaEIOUA")
end

def consonant_change(str)
  vowel_change(str).tr!('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB')
end

def spy_name(str)
  consonant_change(str)
end


created_names = {}

loop do
  puts "Enter your your name(enter 'quit' to exit):"
  old_name = gets.chomp
break if old_name == "quit"
  puts "Your new spy alias is: #{spy_name(old_name)}"
  created_names[old_name] = spy_name(old_name)
end

created_names.each { |old_name, spy_name| puts "Your #{old_name} is actually #{spy_name(old_name)}." }

=begin
def flip_string(str)
  name_change = str.split
  name_change.reverse.join(" ")
end
# change vowels
def vowel_switch(name_flipped)
  name_change = name_flipped.downcase.chars
  vowels = 'aeiou'
  name_change.map! do |letter| # Edge Case
    if letter == "u"
      letter = "a"
    elsif 
      vowels.include?(letter)
        vowels[vowels.index(letter) + 1]
    else
      letter
    end
  end
  name_change.join('').split.map(&:capitalize).join(' ') # recapitlalize letters
end

# change consonants
def consonant_switch(name_flipped)
  name_change = name_flipped.downcase.chars
  consonants = 'bcdfghjklmnpqrstvwxyz'
  name_change.map! do |letter| # Edge Case
    if letter == "z"
      letter = "b"
    elsif 
      consonants.include?(letter)
        consonants[consonants.index(letter) + 1]
    else
      letter
    end
  end
  name_change.join('').split.map(&:capitalize).join(' ') # recapitlalize letters
end


p consonant_switch(vowel_switch(flip_string("Felicia Torres")))
# Will return "Vussit Gimodoe"

=end