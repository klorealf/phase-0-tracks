def calculate(a, operator, b)
   if operator == '+'
     return a + b
   elsif operator == '-'
     return a - b
   elsif operator == '*'
     return a * b
   elsif operator == '/'
     return a / b
   end
end
 
def interface(a, operator, b)
   puts "What calulation would you like to perform?"
   calculation = gets.chomp
   calculation = calculation.split(//)
   if calculation.include?(" ")
     calculation = calculation.delete(" ")
   end
   calculate(calculation[0].to_i, calculation[1], calculation[2].to_i)
end

=begin
calculate(4, '+', 5)
calculate(4, '-', 5)
calculate(4, '*', 5)
calculate(4, '/', 5)
=end

<<<<<<< HEAD
p interface(6, '*', 8)
=======
p interface(5, '*', 5)
>>>>>>> 4320f06749df599773c6090d68fda8c440f53aaa