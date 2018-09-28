class Car

@@all=[]
  attr_reader :make, :model, :owner, :mechanic
  attr_accessor :classification

  def initialize(make, model, classification)
    @make = make
    @model = model
    @mechanic=nil
    @owner = nil
    @classification = classification
    @@all<<self
  end

  def self.all
  @@all
  end

  def expert
    Mechanic.all.select {|mechanic| mechanic if  mechanic.specialty==self.classification}
  end

end
