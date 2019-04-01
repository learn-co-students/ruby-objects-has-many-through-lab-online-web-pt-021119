require "pry"
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
  
  def new_appointment(patient, date)
    #binding.pry
  Appointment.new(patient, self, date)

  end
  
  def appointments
    
    Appointment.all.select {|app| app.doctor == self}
  end
  
  def patients
   appointments.collect do |person|
     person.patient
     #binding.pry
    end
  end
  
end