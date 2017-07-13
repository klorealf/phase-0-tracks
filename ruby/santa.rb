class Santa

	def speak
		p "Ho, Ho Ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(type)
		p "That was a good #{type} cookie!"
	end

	def initialize
		p "Initializing Santa instance..."
	end

end

santa= Santa.new
santa.speak
santa.eat_milk_and_cookies("chocolate")
