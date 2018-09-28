class Mechanic

  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  #ßGet a list of all cars that a mechanic services
  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  #Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars.collect {|car| car.carowner}
  end


  def car_owners_names
    car_owners.collect {|owner| owner.name}
  end

end
