#RELEASE 0

def drinks
  drink1 = "pina colada"
  drink2 = "cosmo"
  puts "What is your favorite cocktail?"
  yield(drink1, drink2)
end

drinks{|drink1, drink2| puts "#{drink1} is delicious on vacation! #{drink2} is so Sex and the City!"}

#RELEASE 1

cocktails = [
  "pina colada",
  "cosmo",
  "beer",
  "wine",
  "vodka"
]
p cocktails

states = {
  Illinois: "Springfield",
  New_York: "Albany",
  Michigan: "Lansing",
  New_Jersey: "Trenton",
  California: "Sacramento"
}
p states

cocktails.each {|x| puts " My favorite drink is #{x}!"}

cocktails.map! do |x|
  x.upcase
end
p cocktails

states.each do |state, capitol|
  puts " I love visiting #{capitol}, #{state}!"
end


# RELEASE 2

cocktails.delete_if {|drinks| drinks == "PINA COLADA"}
p cocktails

states.delete_if {|state, capitol| state == :California}
p states

cocktails.select {|drink| drink == "COSMO"}
p cocktails

states.keep_if {|state, capitol| state == :Michigan}
p states

cocktails.each {|drink|
if drink.include? ("O")
puts cocktails
end
}

states.each {|state, capitol|
if state.length <= 8
puts state
end
}

cocktails.each do |drink|
  if drink.include?("P")
    break
  else
    p cocktails
  end
end

states.each {|state, capitol|
if state.length > capitol.length
  break
else
  p state
  end
}









