puts "What's the password?"
p "password".next

index = 0
secret_password = "password"
input = ""

while index < secret_password.length
  p secret_password[index]
  index += 1
  input = gets.chomp
end
