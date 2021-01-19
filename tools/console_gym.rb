require_relative '../config/environment_gym.rb'

def reload
  load 'config/environment_gym.rb'
end

location1 = Location.new("Location 1")
location2 = Location.new("Location 2")
trainer1 = Trainer.new("Trainer 1")
trainer2 = Trainer.new("Trainer 2")
trainer3 = Trainer.new("Trainer 3")

location1.assign_trainer_to_location(trainer1)
location1.assign_trainer_to_location(trainer2)
trainer1.assign_trainer_to_location(location2)
trainer2.assign_trainer_to_location(location2)
trainer3.assign_trainer_to_location(location2)

client4 = Client.new("Client 4",location1)




# client1 = Client.new("Client 1", trainer1,location1)
# client2 = Client.new("Client 2", trainer1,location1)
# client3 = Client.new("Client 3", trainer2,location2)

Pry.start
