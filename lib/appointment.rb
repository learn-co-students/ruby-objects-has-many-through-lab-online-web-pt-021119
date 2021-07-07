class Appointment
  end
attr_accessor :date, :doctor, :appointment


  @@all []
end

def initialize(date, patient, doctor)
  @date = date
  @patient = patient
  @doctor = doctor
  @doctor.appointments << self
  @patient.appointments << self
  @@all << self
end

def self.all
  @@all
end




end
