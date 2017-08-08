# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative: allows file to communicate with file within the same directory
# require: allows file to communicate with file outside of the directory 
require_relative 'state_data'

class VirusPredictor
#allows for creation of instances for the class. Assigns instance variables. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

#calls the 2 methods. returns the value for the last method 
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

 private 

#calculates the number of deaths based on population returning the number of deaths rounded down. It prints a statement about state's number of deaths. 
  def predicted_deaths
    # predicted deaths is solely based on population density
    #.floor rounds down to an integer
    if @population_density >= 200
      scale_factor = 0.4
    elsif @population_density >= 150
      scale_factor = 0.3
    elsif @population_density >= 100
      scale_factor = 0.2
    elsif @population_density >= 50
      scale_factor = 0.1
    else
      scale_factor = 0.05
    end

    number_of_deaths = (@population * scale_factor).floor 

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

#calculates the speed of spread based on the population density . It prints a statement regarding spread of disease in months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


STATE_DATA.each do |state, data|
 state = VirusPredictor.new(state, data[:population_density], data[:population])
 state.virus_effects
end 
#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?

# The string/hash rocket notation is nice when you'll be interpolating the keys into strings or you have multi-word keys, like North Dakota. Using symbols for keys is arguably easier to read and faster, but doesn't work well for multi-word keys.

# What does require_relative do? How is it different from require?

# Require_relative looks for the other file relative to the location that it is being called from. This is useful for any files that will have the same file structure later. Require needs a complete path, and is useful when you are requiring files from outside sources, such as the internet.

# What are some ways to iterate through a hash?

# Hash iterators include iterating through each key, value, or key value pair. These determine which values will be passed in to the block parameters.

# When refactoring virus_effects, what stood out to you about the variables, if anything?

# Making instance variables significantly reduces the number of parameters required.

# What concept did you most solidify in this challenge?

# I think private methods make more sense now, though I don't feel like I'd always have a good sense of when to make a method private and when to make it public.
