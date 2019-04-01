class Doctor
  
  attr_accessor :name
  
  @@doctors = []
  
  def initialize(name)
    @name = name
    @@doctors << self
  end
  
  def self.all
    @@doctors
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select {|n| n.doctor == self }
  end
  
  def patients
    appointments.collect { |n| n.patient }
  end
  
end