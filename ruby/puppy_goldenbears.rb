=begin
species
	Canis familiaris
characteristics
	height: varies
	Friendly: yes
	eye count: 2
	name: varies
	color: varies
behavior
	bark
	pant
	growls
=end 

class Puppy 
end 

duchess = Puppy.new
fido = Puppy.new
spot = Puppy.new

Puppy.methods
Puppy.new

spot.class
duchess == fido
fido.instance_of?(Array)
fido.instance_of?(Puppy)
#spot.play_dead

str = String.new
str.length 
str.empty?
str += "huh."

greeting = String.new("hello")
greeting.length
greeting.upcase




