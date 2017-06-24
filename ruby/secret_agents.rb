=begin
#pseudocode
 
  -encrypt
    -take string from user
    -on the password string;
      go to the first letter
      replace that letter with the next letter in the alphabet
      implicit return 
      repeat until all the letters on the string are gone
    - label the new set of strings 
  -decrypt
    -take string from the encrypt
      -find each letter's placement in the alphabet
      -find the letter's order through the alphabet string 
      -replace the alphabet index-1 with alphabet letter
      -implicit return 
      -repeat for all letters in the string
    - new decrypted password 
=end 



def encrypt(string) 
encrypted_password = ""
index = 0 
  while index < string.length 
  if string[index] == " " 
    encrypted_password += " " 
  elsif string[index] == "z"
    encrypted_password += "a"
  else 
    encrypted_password += string[index].next 
  end
  index += 1 
  end
encrypted_password 
end

   
def decrypt(string) 
decrypted_password = "" 
index = 0 
  while index < string.length
  if string[index] == " "
    decrypted_password += " "
  elsif string[index] == "a"
    decrypted_password += "nil"
  else
    decrypted_password += alphabet_order((string)[index])
  end
  index += 1
  end
decrypted_password
end

def alphabet_order(letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  previous_index = alphabet.index(letter) - 1 
  previous_letter = alphabet[previous_index]
end


  puts "Would you like to encrypt or decrypt your password?"
  choice = gets.chomp.downcase
  puts "What's your password?"
  string = gets.chomp 
    if choice == "encrypt"
      puts encrypt(string)
    elsif choice == "decrypt"
      puts decrypt(string)
    else
     puts "What?"
    end