class Car

  attr_reader :make, :model, :classification, :mechanic, :car_owner

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @mechanic = mechanic
    @car_owner = car_owner
    @@all << self
  end

# - Get a list of all cars
  def self.all
    @@all
  end

# - Get a list of all car classifications
  def classifications
    Car.all.map do |car|
      car.classification
    end
  end

# - Get a list of mechanics that have an expertise that matches the car classification
  def car_mechanics
    Mechanic.all.select do |mechanic|
      mechanic.specialty == self
    end
    mechanic
  end

end
