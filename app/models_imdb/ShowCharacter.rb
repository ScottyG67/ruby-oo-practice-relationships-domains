class ShowCharacter
    attr_accessor :show, :character

    def initialize(show,character)
        @show = show
        @character = character
        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end

end