require "pry"

class Patient

  attr_accessor :name

    @@all = []

    def initialize(name)
      @name = name
      # @dates = date
      @@all << self
    end

    def self.all
      @@all
    end

  # create new appointment to pass in two arguments and use self to call patient instance
  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  # patient knows about his appointments
  def appointments
    # Appointment will hold have patient instance info and date info
    # iterates through appointment's patient instance to find name
    Appointment.all.select do | appointment |
      appointment.patient == self
      end
  end

  # transform to pull doctors
  def doctors
    appointments.map do | appointment |
      appointment.doctor
    end
  end

end

# hevydevy = Patient.new("Devin Townsend")
#
#
# pry.start
#
# false
