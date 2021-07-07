class Doctor
@@all = []
attr_accessor :name, :appointments, :patients

def initialize(name)
@name = name
@@all << self
@appointments = []
@patients = []
end

def self.all
@@all
end

def new_appointment(patient,date)
appt = Appointment.new(date,patient,self)
@appointments << appt
@patients << patient
Appointment.all << appt	
appt
end



end
