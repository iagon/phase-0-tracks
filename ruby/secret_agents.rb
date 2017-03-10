# Input a string
# Create variable containing empty string
# Iterate through every letter of string at index
# For every " " leave as " "
# Otherwise advance each letter to next and store to variable
# Return variable

def encrypt(string)
  index = 0
  new_string = ""

while index < string.length
  if string[index] == " "
     new_string[index] = " "
  else
  new_string[index] = string[index].next
  end
  index += 1
end
return new_string

end

puts encrypt("bcd")
puts encrypt("zed")

# Input a string
# Create variable containing empty string
# Iterate through every letter of string at index
# For every " " leave as " "
# Indexed each letter in string of full alphabet
# Subtract 1 from alphabet index to move each letter in string backward
# Return variable


def decrypt(string)
  index = 0
  new_string = ""
  alphabet = "abcdefghijklmnopqrstuvwxyz"

while index < string.length
  if string[index] == " "
     new_string[index] = " "
  else
  letter = alphabet.index(string[index])
  new_string += alphabet[letter - 1]
  end
  index += 1
end
return new_string

end

puts decrypt("bcd")
puts decrypt("afe")
