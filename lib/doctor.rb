class Doctor
  attr_writer :appointments, :patients
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @patients = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      @appointments << appointment if appointment.doctor == self
    end
  end

  def patients
    Appointment.all.collect do |appointment|
      appointment.patient if appointment.doctor == self
    end
  end
end
