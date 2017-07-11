# class Puppy
#   def initialize
#     puts "initializing new puppy instance"
#   end
#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end
#   def speak(num)
#     puts "Woof!!!" * num
#   end
#   def roll_over
#     puts "**roll over**"
#   end
#   def dog_years(num)
#     puts num * 7
#   end
#   def sit(name)
#     puts "#{name} sits down"
#   end
# end
# fido = Puppy.new
# spot = Puppy.new
# spot.sit("spot")
# fido.speak(3)
# fido.roll_over
# fido.dog_years(3)
# fido.sit("fido")
class Swimmer
  def initialize
    puts "initializing new swimmer instance"
  end
  def freestyle(num)
    puts "You did #{num} laps freestyle. Good job!"
  end
  def backstroke(num)
    puts "You did #{num} laps backstroke. Good job!"
  end
  def butterfly(name)
    puts "#{name} did the butterfly stroke perfectly."
  end
end
  swim_array = []
  50.times do |swimmer|
    swim_array << Swimmer.new
  end
  # puts swim_array
names = ["Bob", "Sandy", "Carol", "Frank"]
  swim_array.each do |x|
    x.butterfly(names.sample)
    x.freestyle(rand(5))
    x.backstroke(rand(5))
  end

