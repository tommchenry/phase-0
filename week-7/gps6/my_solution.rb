# Virus Predictor

# I worked on this challenge with Celeen Rusk.
# We spent 1.5 hours on this challenge.

# EXPLANATION OF require_relative
#  require_relative forces a file to have access to another file before it can be run in Ruby. Not having the required file will throw a LoadError and prevent the file from being run. The require_relative differs from require by specifying the relative location of the file that is required. In this case, because state_data is included in the same directory, the filename alone can be used.
#
require_relative 'state_data'

class VirusPredictor

  #This method constructs the object based on the class and populates the instance variables with the values provided in the argument, including state, population, and population density.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #This method calls the methods .predicted_deaths and .speed_of_spread on the instance variables passes as arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #This method takes population_density, population, and state as arguments, and depending on the population density, returns a string including the state name and the value of number_of_deaths based on the population being multiplied by a variable.
  def predicted_deaths
    # predicted deaths is solely based on population density

    case @population_density
    when 0..50
      number_of_deaths = (@population * 0.05).floor
    when 50..100
      number_of_deaths = (@population * 0.1).floor
    when 100..150
      number_of_deaths = (@population * 0.2).floor
    when 150..200
      number_of_deaths = (@population * 0.3).floor
    else
      number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This method takes the population_density and state as arguments. It creates a local variable speed and then defines its value based on the value of the instance variable @population_density. It returns a string that includes this speed.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    case @population_density
    when 0..50
      speed += 2.5
    when 50..100
      speed += 2
    when 100..150
      speed += 1.5
    when 150..100
      speed += 1
    else
      speed += 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#PSEUDOCODE
# Iterate through the collection object STATE_DATA
# Create a new object for each key in STATE_DATA
# Pass the object the instance variables
# Run the virus effects method on the newly produced object

def all_50
  STATE_DATA.each do |state_name,values|
    # state = Alabama
    # values ={population_density: 94.65, population: 4822023}
      state = VirusPredictor.new(state_name, values[:population_density], values[:population])
    state.virus_effects
  end
end

all_50

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section

