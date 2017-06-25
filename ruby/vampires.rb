p "What is your name?"


p "How old are you?"
	age = gets.chomp.to_i

p "What year were you born?"
	year = gets.chomp.to_i

 if age <= 150 && year >= 1867
		p "You are not a vampire."
 elsif age > 150
		p "You are a vampire!"
 else year < 1867
		p "You are a vampire!"
 end

puts "Our company cafeteria serves garlic bread. Should we order some for you?"

puts "Would you like to enroll in the company's health insurance?"
