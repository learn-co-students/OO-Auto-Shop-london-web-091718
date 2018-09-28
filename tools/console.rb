require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ryan = Carowner.new('Ryan')
tinkerbell = Carowner.new('Tinkerbell')

bob = Mechanic.new('Bob', 'antique')
felix = Mechanic.new('Felix', 'exotic')

bmw = Car.new('BMW', 'x', 'antique', tinkerbell, bob)
merc = Car.new('merc', 'h', 'exotic', ryan, felix)




binding.pry
