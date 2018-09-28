class Mechanic

@@all=[]
  attr_reader :name, :specialty

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all<<self
end

def self.all
@@all
end

def cars
  Cars.all.select {|car| car if car.mechanic == self}
end

def car_owners_working_with_this_mechanic
  Cars.all.select {|car| car if car.mechanic==self}.map{|car|car.owner}.uniq
end


end
