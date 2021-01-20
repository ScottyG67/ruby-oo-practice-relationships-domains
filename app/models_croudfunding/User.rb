class User
    attr_accessor :name
    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end
    def self.all 
        @@all
    end

    def get_pledges
        Pledge.all.select {|pledge| pledge.backer == self}
    end

    def self.highest_pledge
        record = []
        record = Pledge.all.max_by(1) {|pledge| pledge.amount}
        record[0].backer
    end

    def self.multi_pledger
        self.all.select {|user| user.get_pledges.length >1}
    end

    def back_project(project,amount)
        Pledge.new(project,self,amount)
    end

    def self.project_creator
        project_creators = []
        project_creators = Project.all.map do |project|
            project.creator
        end
        project_creators.uniq
    end




end