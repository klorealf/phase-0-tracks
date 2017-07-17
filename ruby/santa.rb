class Santa

	attr_reader :gender
	attr_accessor :ethnicity, :age

	def initialize(gender, ethnicity)
		gen_eth = [gender, ethnicity]
		@gender = gen_eth[0]
		@ethnicity =  gen_eth[1]
		@reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = rand(140)

	end

	def speak
		p "Ho, Ho Ho! Happy Holidays!"
	end

	def eat_milk_and_cookies(type)
		p "That was a good #{type} cookie!"
	end

	def celebrate_birthday(age) 
		@age = age.to_i + 1
	end

	def get_mad_at(name)
		@reindeer.push(name) 
		@reindeer.delete(name) 
	end

	def gender=(new_gender)
		@gender = new_gender
	end

	def age
		@age 
	end

	def ethnicity
		@ethnicity
	end
	end

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnic = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

#genders.length.times do |i|
#	santas[genders[i]] = ethnic[i]
#end

santa_update = Santa.new("Intersex", "Other")
#santa_update.speak
#santa_update.eat_milk_and_cookies("snickerdoodle")
p santa_update.celebrate_birthday(25)
p santa_update.get_mad_at("Cupid")
p santa_update.gender = "female"
p santa_update.ethnicity
p santa_update.age

100.times do |i|
	p Santa.new(genders[rand(genders.length)], ethnic[rand(ethnic.length)])
end

