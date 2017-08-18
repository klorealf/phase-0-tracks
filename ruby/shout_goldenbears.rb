# module Shout
#   # we'll put some methods here soon, but this code is fine for now!
# end 

# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end

# 	def self.yell_happily(words)
# 		words + "!!!" + " =) "
# 	end
# end

# p Shout.yell_angrily("Go away")
# p Shout.yell_happily("I love you")
#require_relative 'shout'

#Shout.singleton_methods



module Shout
	def yell_angrily(words)
		puts words.upcase + "!!!" +  ">=("
	end

	def yell_happily(words)
		puts words + "!!!" + " =)"
	end
end


class Rollercoaster
	include Shout
end


class Parent
	include Shout
end

rollercoaster = Rollercoaster.new
rollercoaster.yell_angrily("Ahh")
rollercoaster.yell_happily("Yay")

parent = Parent.new
parent.yell_angrily("Clean your room")
parent.yell_happily("I am proud of you")
