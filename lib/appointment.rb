class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []
    def initialize(patient, date, doctor)
        @patient = patient
        @date = date
        @doctor = doctor
        self.class.all << self
    end

    def self.all
        @@all
    end

end 