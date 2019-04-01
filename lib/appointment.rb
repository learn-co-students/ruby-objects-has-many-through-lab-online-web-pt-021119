class Appointment
  
attr_accessor :date, :patient, :doctor
  @@all = []
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self 
  end
  
  def self.all 
  @@all
  #binding.pry
  end 
  
  def appointment
    
  end
  
end