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

p encryption

def decryption
end

s=("a".."z").to_a.join!
secret_password="password"
secret_password.gsub(/[a-z]/){|c|s.index(c)-1} 


str="abcdefghijklmnopqrstuvwxyz"
str[3]

class String
  Alpha26 = ("a".."z").to_a

  def to_i26
    result = 0
    downcase!
    (1..length).each do |i|
      char = self[-i]
      result += 26**(i-1) * (Alpha26.index(char) + 1)
    end
    result
  end

end