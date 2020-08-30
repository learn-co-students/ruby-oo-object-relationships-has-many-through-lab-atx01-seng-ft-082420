require 'pry'
class Patient
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name 
        self.class.all << self
    end 

    def appointments
        Appointment.all.select do |appt|
            appt.patient == self 
            #binding.pry
        end 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self ,doctor)
    end 

    def doctors
        self.appointments.collect do |appt|
            appt.doctor 
            #binding.pry
        end 
    end 

    def self.all 
        @@all 
    end 
end 