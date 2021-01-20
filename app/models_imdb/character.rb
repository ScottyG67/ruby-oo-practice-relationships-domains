class Characters
    attr_accessor :name, :actor


    def initialize(name,actor)
        @name = name
        @actor = actor

        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def get_shows
        ShowCharacter.all.select {|entry| entry.character == self}
    end
    def get_movies
        MovieCharacter.all.select {|entry| entry.character == self}
    end

    def self.most_apperances
        self.all.max_by(1) {|character| character.get_shows.length + character.get_movies.length }
    end

    






end