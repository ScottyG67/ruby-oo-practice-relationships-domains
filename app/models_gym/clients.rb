# create files for your ruby classes in this directory
class Client
    attr_accessor :name, :trainer, :location
    # def initialize (name,#trainer=nil, location)
    #     @name = name
    #     @trainer = trainer
    #     @location = location
    #     @@all << self
    # end
    def initialize (name, location)
        @name = name
        @location = location
        @@all << self
    end
    @@all = []

    def self.all
        @@all
    end

    def self.new_with_trainer(name,location,trainer)
        new_client = Client.new("Name",locaiton)
        new_client.trainer = trainer
    end


    def assign_trainer(trainer)
        locations = []
        locations = LocationTrainer.locations_by_trainer(trainer)
        if locations.any?{|loc_train| loc_train.location == self.location}
            self.trainer = trainer
        else
            "That trainer does not work at this location, please choose a different trainer"
        end
    end



end
