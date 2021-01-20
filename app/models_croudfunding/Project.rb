class Project 
    attr_reader :name, :pledge_goal, :creator
    @@all = []

    def initialize (name, pledge_goal, creator)
        @name = name
        @pledge_goal=pledge_goal
        @creator = creator

        @@all << self
    end
    def self.all 
        @@all
    end
    def get_pledge
        Pledge.all.select {|pledge| pledge.project == self}
    end

    def total_pledged
        self.get_pledge.map do |pledge| pledge.amount
        end.sum
    end

    def self.no_pledges
        self.all.select {|project| project.get_pledge == []}
    end

    def self.above_goal
        self.all.select{|project|project.total_pledged > project.pledge_goal}
    end

    def self.most_backers
        self.all.max_by(1) {|project| project.get_pledge.length}
    end





end