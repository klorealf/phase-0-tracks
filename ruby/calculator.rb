def calculate(a, operator, b)
   if operator == '+'
   elsif operator == '-'
    return a - b
   elsif operator == '*'
    return a * b
   elsif operator == '/'
    return a / b
   end
end

#p calculate(1, '+', 5)
#p calculate(1, '-', 5)
#p calculate(1, '*', 7)
#p calculate(10, '/', 5)
   puts "What calulation would you like to perform?"
   calculation = gets.chomp
   calculation = calculation.split(//)
   if calculation.include?(" ")
      # did you know the .delete will only delete the value if it is there?