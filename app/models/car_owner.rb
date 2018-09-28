class Carowner

 @@all= []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.carowner == self}
  end

  def mechanics
    cars.collect {|car| car.mechanic}
  end

  def self.average_cars
    owner_num = self.all.count
    Car.all.count.to_f / owner_num.to_f
  end

end
