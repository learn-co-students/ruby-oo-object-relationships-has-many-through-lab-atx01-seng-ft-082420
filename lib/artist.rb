require 'pry'

class Artist
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.each do |song|
            song if song.artist.name == self.name
        end
    end

    def new_song(name, genre)
       Song.new(name, self, genre) 
    end

    def genres
        songs.map do | song |
            song.genre
            # binding.pry
        end
    end

end