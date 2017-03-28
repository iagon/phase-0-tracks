# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require relative can take the path from your current directory, whereas require can only handle paths relative to the base directory
# it is a shortcut subset of require 

require_relative 'state_data'

class VirusPredictor

#initializes a new instance of the virus predictor with the attributes entered as parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end



#calls 2 methods 
  def virus_effects
    print "#{@state} will lose #{number_of_predicted_deaths} people in this outbreak"
    puts " and will spread across the state in #{speed_of_spread} months.\n\n"
  end

  private

#calculates numbers of deaths based on population density and pop size and prints a string w the results / returns nil
def death_factor  

    if @population_density >= 200
      0.4
    elsif @population_density >= 150
      0.3
    elsif @population_density >= 100
      0.2
    elsif @population_density >= 50
      0.1
    else
      0.05
    end
  end

  def number_of_predicted_deaths
    # predicted deaths is solely based on population density

    (@population * death_factor).floor
  end

#calculates speed of spread based on population density and prints string / returns nil
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      0.5
    elsif @population_density >= 150
      1
    elsif @population_density >= 100
      1.5
    elsif @population_density >= 50
      2
    else
      2.5
    end
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

STATE_DATA.each do |state, info_hash|
state = VirusPredictor.new(state, info_hash[:population_density], info_hash[:population])
state.virus_effects
end


#=======================================================================
# Reflection Section