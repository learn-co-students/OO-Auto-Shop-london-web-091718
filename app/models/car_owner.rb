class CarOwner

  @@all=[]

  attr_reader :name

  def initialize(name)
    @name = name
    @@all<<self
  end

def cars
  Car.all.select {|car| car.owner==self}
end

def mechanics
  Car.all.select {|car| car if car.owner==self}.map{|car| car.mechanic}
end

def self.average_cars
  Car.all.length/Owner.all.length
end

def self.all
  @@all
end

end
