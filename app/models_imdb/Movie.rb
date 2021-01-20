class Movies
    attr_accessor :name

    def initialize(name)
        @name = name

        @@all<<self
    end

    @@all = []

    def self.all
        @@all
    end

    def get_characters
        MovieCharacter.all.select {|assoisation| assoisation.movie == self}
    end

    def self.most_actors
        #movies - moviecharacter - characters (since a character can have only one actor character = actor)
        self.all.max_by(1) {|movie| movie.get_characters.length}
    end





end