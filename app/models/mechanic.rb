class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

#   - Get a list of all mechanics
  def self.all
    @@all
  end

#   - Get a list of all cars that a mechanic services
  def mechanic_cars
    Car.all.select do |car|
      car.mechanic
    end
  end

#   - Get a list of all the car owners that go to a specific mechanic
  def mechanic_car_owners
    mechanic_cars.map do |car|
      car.car_owner
    end
  end

  #   - Get a list of the names of all car owners who
  #   go to a specific mechanic
  def mechanic_car_owner_names
    mechanic_car_owners.map do |car_owner|
      car_owner.name
    end
  end
end
