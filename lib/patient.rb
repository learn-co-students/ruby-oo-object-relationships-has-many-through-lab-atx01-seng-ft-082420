require 'pry'

class Patient
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
        Appointment.all.select {|app| app if app.patient == self}
            # binding.pry
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
        # binding.pry
    end

    def doctors
        Appointment.all.map do |appointment|
            appointment.doctor
        end
    end

end