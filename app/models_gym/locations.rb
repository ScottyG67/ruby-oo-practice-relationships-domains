# create files for your ruby classes in this directory

class Location
    attr_accessor :name

    def initialize (name)
        @name = name
        @@all << self
    end

    @@all =[]

    def self.all
        @@all
    end

    def assign_trainer_to_location(trainer)
        LocationTrainer.new(self,trainer)
    end

    def client_list
        Client.all.select{|client| client.location == self}
    end

    def self.least_clients
        self.all.min_by(1) {|location| location.client_list.length}
    end


end

