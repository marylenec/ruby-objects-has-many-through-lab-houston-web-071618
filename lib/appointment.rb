require "pry"

class Appointment

  attr_accessor :patient, :date, :doctor

  @@all = []
  # appointment should be taking in dr, patient, date
  def initialize(patient, doctor, date)
    @doctor = doctor
    @patient = patient
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end

end

# appointment = doctor_who.new_appointment(hevydevy, "Friday, January 32nd")
#
# pry.start
#
# false
