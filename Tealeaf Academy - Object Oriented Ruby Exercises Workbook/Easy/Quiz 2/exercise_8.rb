# If we have this class:

class Game
  def play
    "Start the game!"
  end
end

# And another class:

class Bingo < Game
  def rules_of_play
    #rules of play
  end
end

# What can we add to the Bingo class to allow it to inherit the play method
# from the Game class?
# class Bingo < Game

game_of_bingo = Bingo.new
p game_of_bingo
puts game_of_bingo.play
