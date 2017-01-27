# Virus Predictor

# I worked on this challenge [by myself, with: Tyler ].
# We spent [#1.5] hours on this challenge.

# EXPLANATION OF require_relative
# Require relative allows you to link a separate file to the current file you are working in.
# Require relative is used when you are trying to include a file that is related to the file you are including it in.

require_relative 'state_data'

class VirusPredictor

  # Initialize an instance of the class with given attributes
  	
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  # Calculates the predicted deaths and speed of spread by calling those methods
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  
  private

  # Take population density and population by state as input and calculate the number of deaths
  
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      x = 0.4
    elsif @population_density >= 150
      x = 0.3
    elsif @population_density >= 100
      x = 0.2
    elsif @population_density >= 50
      x = 0.1
    else
      x = 0.05
    end

	number_of_deaths = (@population * x).floor
	
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # Takes population density of the state and calculates speed at which the virus will spread
  
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    
    if @population_density >= 200
      num_months = 0.5
    elsif @population_density >= 150
      num_months = 1
    elsif @population_density >= 100
      num_months = 1.5
    elsif @population_density >= 50
      num_months = 2
    else
      num_months = 2.5
    end

    puts " and will spread across the state in #{num_months} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each { |key, value|
  state_virus = VirusPredictor.new(key, value[:population_density], value[:population])
  state_virus.virus_effects
}


#=======================================================================
# Reflection Section

# The STATE_HASH is the main hash, and the individual hashes within are other hashes. In other words, it is a nested hash table.
# Require_relative lets you include a separate but related file in the working file. It is used instead of require for when you are including a file that you have written. Require is mostly used for files/libraries that are already included in Ruby.
# The way we iterated through our hash was by using the #each keyword by doing something for each key and value of the hash.
# We realized that the variables in virus_effects that were being passed into predicted_deaths and speed_of_spread were actually already able to be accessed via the instance variables without specifically passing them in. We were able to delete the arguments that it takes in since they are unnecessary.
# The concept I solidified the most in the challenge was figuring out different ways to refactor code to make it less repetitive and more clear and concise. Though it took us a little bit of thinking and help from the guide to figure out exactly how to refactor, we learned some methods that I will be using in my future code.