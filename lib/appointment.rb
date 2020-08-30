require 'pry'
class Appointment
    attr_accessor :date, :patient, :doctor 
    @@all = [] 
    def initialize(date, patient, doctor)
        #binding.pry
        @date = date
        @patient = patient 
        @doctor = doctor
        self.class.all << self
    end 
    #binding.pry
    def self.all 
        @@all 
    end 
end 