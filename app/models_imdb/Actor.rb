class Actors
    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

    def get_characters
        Characters.all.select {|character| character.actor == self}
    end

    def self.most_characters
        self.all.max_by(1) {|actor| actor.get_characters.length}
    end





end