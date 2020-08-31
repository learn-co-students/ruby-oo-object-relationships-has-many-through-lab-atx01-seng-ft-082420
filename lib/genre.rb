require 'pry'

class Genre
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def songs
        Song.all.each do |song|
            song if song.genre.name == self.name
        end
    end

    def self.all
        @@all
    end

    def artists
       songs.map do |song|
            song.artist
       end
    end

end