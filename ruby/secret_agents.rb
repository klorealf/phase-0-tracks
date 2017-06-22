def encryption
index = 0
secret_password = "password"
input = ""
puts "What's the password?"
while index < secret_password.length
  p secret_password[index]
  index += 1
 end
end


s=("a".."z").to_a.join!
secret_password="password"
secret_password.gsub(/[a-z]/){|c|s.index(c)-1} 


str="abcdefghijklmnopqrstuvwxyz"
str[3]

