p "What is your name?"
	name = gets.chomp

if name = "Drake Cula" || "Tu Fang"
	vampire_name = true
 else
 	vampire_name = false
end

p "How old are you?"
	age = gets.chomp.to_i

p "What year were you born?"
	year = gets.chomp.to_i

if age <= 150 && year >= 1867
	age_right = true
 elsif age > 150
	age_right = false
 else year < 1867
	age_right = false
end 


p "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
garlic = gets.chomp.downcase 

if garlic == "yes"
  vampire_like_garlic = true
 else
  vampire_like_garlic = false
end

p "Would you like to enroll in the company's health insurance? (Yes/No)"
insurance = gets.chomp.downcase

if insurance == "yes"
  vampire_want_insurance = true
else
  vampire_want_insurance = false
end


 if age_right && vampire_like_garlic || vampire_want_insurance
 	p "Probably not a vampire."
  elsif !age_right && (!vampire_like_garlic || vampire_want_insurance)
  	p "Probably a vampire"
  elsif  !age_right && (!vampire_like_garlic && !vampire_want_insurance)
 	p "Almost certainly a vampire."
 elsif age_right && vampire_like_garlic && vampire_want_insurance && vampire_name
 	p "Definitely a vampire!"
  else
  	p "Results inconclusive"
 end

