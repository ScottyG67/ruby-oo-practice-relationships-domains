require_relative '../config/environment_imdb.rb'

def reload
  load 'config/environment_imdb.rb'
end


actor1 = Actors.new("Actor 1")
actor2 = Actors.new("Actor 2")
actor3 = Actors.new("Actor 3")
actor4 = Actors.new("Actor 4")

movie1 = Movies.new("Movie 1")
movie2 = Movies.new("Movie 2")

show1 = Shows.new("Show 1")
show2 = Shows.new("Show 2")

character1 = Characters.new("Character name 1", actor1)
character2 = Characters.new("Character name 2", actor2)
character3 = Characters.new("Character name 3", actor3)
character4 = Characters.new("Character name 4", actor3)
character5 = Characters.new("Character name 5", actor1)
character6 = Characters.new("Character name 6", actor2)
character7 = Characters.new("Character name 7", actor3)
character8 = Characters.new("Character name 8", actor4)

MovieCharacter.new(movie1,character1)
MovieCharacter.new(movie1,character7)
MovieCharacter.new(movie1,character3)
MovieCharacter.new(movie2,character3)

ShowCharacter.new(show1,character5)
ShowCharacter.new(show1,character6)
ShowCharacter.new(show1,character7)
ShowCharacter.new(show2,character7)


Pry.start
