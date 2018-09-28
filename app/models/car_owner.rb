class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

# - Get a list of all owners
  def self.all
    @@all
  end

# - Get a list of all the cars that a specific owner has
  def owner_cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

# - Get a list of all the mechanics that a specific owner goes to
  def owner_mechanics
    owner_cars.map do |car|
      car.mechanic
    end
  end

# - Get the average number of cars owned for all owners
# Get all the cars owned by all owners
  def self.average_number_cars
    sum = 0
    CarOwner.all.map do |carowner|
        sum +=  carowner.owner_cars.length
    end
    sum.to_f / CarOwner.all.length.to_f
  end
end
