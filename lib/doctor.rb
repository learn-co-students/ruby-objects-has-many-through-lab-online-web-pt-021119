class Doctor
  attr_accessor :name, :appointments, :patients

  @@all[]

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end

  def self.all
    @@all
  end

  def new_appointment(patients, date)
    appointment = appointment.new (date, patient, self)
    @appointments<<appointment


  end
