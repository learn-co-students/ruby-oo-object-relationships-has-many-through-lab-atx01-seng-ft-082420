require 'pry'
class Artist
    attr_accessor :name 
    @@all = []
    def initialize(name) 
        @name = name 
        self.class.all << self 
    end 

    def songs 
        Song.all.select do |song|
         song.artist == self
            
        end 
    end 

    def new_song(name, genre) 
        Song.new(name, self, genre)
    end 

    def genres
        #binding.pry
        self.songs.collect do |songs|
            songs.genre 
        end 
    end

    def self.all 
        @@all
    end 
end 