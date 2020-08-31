require 'pry'

class Doctor
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.each do |app|
            # binding.pry
            app if app.doctor.name == self.name
        end
        # binding.pry
    end

    def new_appointment(date, patient)
        Appointment.new(patient, date, self)
    end

    def patients
        Appointment.all.map do |appointment|
            appointment.patient
        end
    end

end