# create files for your ruby classes in this directory

class LocationTrainer
    attr_accessor :location, :trainer

    def initialize (location,trainer)
        @location = location
        @trainer = trainer
        @@all << self
    end
    @@all =[]

    def self.all
        @@all
    end

    def self.locations_by_trainer(trainer_to_find)
        self.all.select {|loc_train| loc_train.trainer == trainer_to_find}
    end
    def self.trainers_by_locaiton(location_to_find)
        self.all.select {|loc_train| loc_train.location == location_to_find}
    end

    def self.destroy_all
        @@all.clear
    end




end

