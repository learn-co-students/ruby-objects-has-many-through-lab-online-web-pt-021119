class Doctor
  attr_accessor :name 
  @@all = []
  def initialize(name)
    @name = name
    @@all<< self
  end
  def self.all
    @@all
  end
  
  def new_appointment(self, date)
  appointment
  end
  
  def appointments
    
  end
end