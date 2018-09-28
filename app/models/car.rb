class Car

  attr_accessor :make, :model, :classification, :carowner, :mechanic

  @@all = []

  def initialize(make, model, classification, carowner, mechanic)
    @mechanic = mechanic
    @make = make
    @model = model
    @carowner = carowner
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

#Get a list of all car classifications
  def self.classifications
    self.all.map { |car| car.classification}
  end


  #Get a list of mechanics that have an expertise that matches the car classification
  def mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
