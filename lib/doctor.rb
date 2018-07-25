require "pry"

class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end
  # doctor knows about his appointments
  def appointments
    # Appointment will hold have patient instance info and date info
    # iterates through appointment's doctor instance to find self
    Appointment.all.select do | appointment |
      appointment.doctor == self
      end
  end

  def patients
    appointments.map do | appointment |
      appointment.patient
    end
  end

end

# doctor_who = Doctor.new("The Doctor")
# doctor_phil = Doctor.new("Oprah's Doctor")
# appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
#
#
# pry.start
#
# false
