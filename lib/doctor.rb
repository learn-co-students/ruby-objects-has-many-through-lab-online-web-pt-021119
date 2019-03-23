require 'pry'

class Doctor
  @@all = []
  attr_reader :name 
  attr_writer :date, :patient 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end 
  
  def appointments 
    doctor_appointments = Appointment.all.select{|appointment| appointment.doctor == self}
  end 
  
  def patients 
    doctor_patients = Appointment.all.map{|appointment| appointment.patient}
  end 
  
  def self.all 
    @@all 
  end 
  
end 