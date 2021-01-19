# create files for your ruby classes in this directory
class Trainer
    attr_accessor :name

    def initialize (name)
        @name = name
        @@all << self
    end

    def assign_trainer_to_location(location)
        LocationTrainer.new(location,self)
    end

    @@all =[]
    def self.all
        @@all
    end

    def client_list
        Client.all.select{|client| client.trainer == self}
    end

    def self.most_clients
        self.all.max_by(1) {|trainer| trainer.client_list.length}
    end


end
