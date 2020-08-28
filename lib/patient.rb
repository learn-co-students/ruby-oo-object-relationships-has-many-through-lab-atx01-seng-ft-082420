class Patient
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end 

    def new_appointment(doctor, date)
        Appointment.new(self, date, doctor)
    end 

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        self.appointments.collect do |appointment|
            appointment.doctor
        end
    end
end 