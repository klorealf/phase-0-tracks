# Virus Predictor

# I worked on this challenge [by myself, with: Joe].
# We spent [#] hours on this challenge. 1

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
<<<<<<< HEAD
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
=======
#    predicted_deaths(@population_density, @population, @state)
#   speed_of_spread(@population_density, @state)
>>>>>>> ce6e0ffba48ff24c333800963801e3e427cb6d18
    death_rate(@population_density, @population, @state)
  end

  private

  def death_rate(population_density, population, state)
    # predicted deaths is solely based on population density
    speed = 0.0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
     speed += 0.5 
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
      speed += 1
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
      speed += 1.5 
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
      speed += 2 
    else
      number_of_deaths = (@population * 0.05).floor
      speed += 2.5 
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak and will spread across the state in #{speed} months."

  end

  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

STATE_DATA.each do |state|
  VirusPredictor.new(state[0], state[1] [:population_density], state[1] [:population]).virus_effects
end

#=======================================================================
# Reflection Section