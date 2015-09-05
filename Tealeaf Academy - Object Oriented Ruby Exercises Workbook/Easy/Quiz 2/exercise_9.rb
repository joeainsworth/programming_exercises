# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

class Bingo < Game
  def rules_of_play
    #rules of play
  end

  def play
    "Start the game of bingo!"
  end
end

# What would happen if we added a play method to the Bingo class, keeping in
# mind that there is already a method of this name in the Game class that the
# Bingo class inherits from.
# The bingo object would first look for a method named play within the class
# if found it will use this method.

game_of_bingo = Bingo.new
chess = Game.new

puts game_of_bingo.play
puts chess.play
