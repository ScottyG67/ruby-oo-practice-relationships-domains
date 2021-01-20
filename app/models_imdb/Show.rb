class Shows
    attr_accessor :name

    def initialize(name)
        @name = name

        @@all << self
    end

    @@all = []

    def self.all
        @@all
    end





end