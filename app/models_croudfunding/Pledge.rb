class Pledge
    attr_reader :project, :backer, :amount
    @@all = []

    def initialize (project, backer, amount)
        @project = project
        @backer = backer
        @amount = amount

        @@all << self
    end
    def self.all 
        @@all
    end

    def user
        @backer
    end





end