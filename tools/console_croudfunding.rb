require_relative '../config/environment_croudfunding.rb'

def reload
  load 'config/environment_croudfunding.rb'
end

bob = User.new("Bob")
joe = User.new("Joe")
zed = User.new("Zed")
scott = User.new("Scott")


moon = Project.new("Go to moon",10000000,bob)
mars = Project.new("Go to Mars",100000000,joe)
europe = Project.new("Go to Europe",1000,zed)
next_door = Project.new("Go nextdoor",10,scott)

bob.back_project(mars,50)
zed.back_project(next_door,1000)
bob.back_project(europe,50)
scott.back_project(mars,10)
#scott.back_project(moon,1000000)
 


Pry.start
