require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

james = CarOwner.new("james")
christopher = CarOwner.new("christopher")

carshop = Mechanic.new("carshop", "ford")
mechanicz = Mechanic.new("mechanicz", "jaguar")

jaguar = Car.new("jaguar", "sx", "fixed", james, carshop)
ford = Car.new("ford", "galaxy", "broken", christopher, mechanicz)
ddd = Car.new("fodddrd", "galadddxy", "brdddoken", christopher, mechanicz)


binding.pry
