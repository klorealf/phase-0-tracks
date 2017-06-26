  p "How many employees will be processed?"
  number_employees = gets.chomp.to_i

loop_counter = 0

until loop_counter == number_employees
  
  p "Employee number: #{loop_counter+1}"
  p "What is your name?"
  	name = gets.chomp
  
  if name == "Drake Cula"
  	vampire_name = true
  	elsif name == "Tu Fang"
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
   elsif year < 1867
  	age_right = false
  	else
  	  p "nil"
  end 


  p "Our company cafeteria serves garlic bread. Should we order some for you? (Yes/No)"
  garlic = gets.chomp.downcase 
  
  if garlic == "yes".downcase
    vampire_like_garlic = true
   elsif garlic == "no".downcase
    vampire_like_garlic = false
   else
    p "nil"  
  end
  
  p "Would you like to enroll in the company's health insurance? (Yes/No)"
  insurance = gets.chomp.downcase
  
  if insurance == "yes".downcase
    vampire_want_insurance = true
   elsif insurance == "no".downcase
    vampire_want_insurance = false
   else
    puts nil
  end


  if age_right && vampire_like_garlic || vampire_want_insurance 
 	p "Probably not a vampire."
  elsif !age_right && !vampire_like_garlic || !vampire_want_insurance 
    p "Probably a vampire."
  elsif !age_right && !(vampire_like_garlic && vampire_want_insurance)
 	p "Almost certainly a vampire."
  elsif age_right && vampire_like_garlic && vampire_want_insurance && (vampire_name) 
 	p "Definitely a vampire!"
  else
    p "Results inconclusive"
  break
  end
 

loop_allergy_counter = 0
  puts "Do you have any allergies?List one at a time. Type 'done' when finised"
  

loop do 
   puts "Allergy: #{loop_allergy_counter+1}"
   allergy = gets.chomp.downcase
   puts "Allergy type: #{allergy}"
  if allergy == "done"
   p  "Thank you"
  break
  elsif allergy == "sunshine"
   p "Probably a vampire."
  break
  else
  end
 loop_allergy_counter += 1
end

 
 loop_counter += 1
end 

   p "Actually nevermind!Let's all be friends."	
 	

 	
 	
 	
 	
 	
 	
 	
 	
 	
 	
