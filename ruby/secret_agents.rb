
p "password".next

index = 0
secret_password = "password"
input = ""

while index < secret_password.length
  puts "What's the password?"
  p secret_password[index]
  index += 1
  input = gets.chomp
end
