class MovieCharacter
    attr_accessor :movie, :character

    def initialize(movie,character)
        @movie = movie
        @character = character
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end





end