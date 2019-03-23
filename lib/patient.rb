class Patient
  attr_writer :appointments, :doctors
  attr_accessor :name, :doctor

  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @doctors = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      @appointments << appointment if appointment.patient == self
    end
  end

  def doctors
    Doctor.all.select do |doctor|
      @doctors << doctor if doctor.patients.include?(self)
    end
  end

end
