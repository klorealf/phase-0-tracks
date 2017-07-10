# method that takes a spy's real name
# takes real name and creates a fake name 
# the real name should have the first and last name swapped
# the swapped names should have the vowels in the names changed to the next vowel in 'aeiou'
# the consonants of the swapped names should change to the next consonant in the alphabet

def vowel(letter)
	if letter == 'u'.downcase
		next_letter = 'a'.downcase
	else
		vowel = 'aeiou' #vowel string
		alpha = vowel.index(letter) + 1 #next letter on vowel string 
		next_letter = vowel[alpha] #change index value from alpha to letter 
	end
	next_letter
end

def consonant(letter)
	if letter == 'z'.downcase
		next_letter = 'b'.downcase
	else
		consonant = 'bcdfghjklmnpqrstvwxyz' #consonant string
		alpha = consonant.index(letter) + 1 #next letter on consonant string 
		next_letter = consonant[alpha]  #change index value from alpha to letter 
	end
	next_letter
end

def fake_name(fullname)
	
	new_name = fullname.split.insert(' ')#convert string to letters
	new_name = new_name.insert(1, " ") #create space after first name
	new_name.reverse! #reverse the first and last name 
	fake_string = new_name.join('') #combine letter from array
	new_name = fake_string.split('') #create array of letters from new_name

	final_name = ""

	new_name.each do |letter|
		if ('aeiou'.include? letter) #find vowel in the string
			encrypt = vowel(letter) #use vowel(letter) method
			final_name << encrypt #add encrypt value to final_name variable
		elsif ('bcdfghjklmnpqrstvwxyz'.include? letter) #find consonant in the string
			encrypt = consonant(letter) #use consonant(letter) method
			final_name << encrypt #add encrypt value to final_name variable
		else
			final_name << letter #catch all that don't apply
		end
	end
	final_name
end

input = ""
store_names = {}
until input == "quit"
	puts "Please enter a name. Do you want to quit? Type 'quit' to exit"
	input = gets.chomp
	if input != 'quit'
		store_names[input] = fake_name(input)
	end
end

store_names.each do |real_name, fake_name|
	puts "#{real_name} is also known as #{fake_name}"
end