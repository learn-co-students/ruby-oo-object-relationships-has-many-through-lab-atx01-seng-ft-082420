require 'pry'
class Doctor 
    attr_accessor :name 
    @@all = []
    def initialize(name)
        @name = name 
        self.class.all << self
    end 

    def appointments 
        Appointment.all.select do |appt|
         appt.doctor == self
            
        end 
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end 

    def patients 
        #binding.pry
        self.appointments.collect do |appt|
            appt.patient
        end
    end

    def self.all 
        @@all 
    end 


end