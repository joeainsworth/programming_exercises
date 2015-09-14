require_relative 'player'
require_relative 'die'
require_relative 'game_turn'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(name)
    @players << name
  end

  def play(rounds)
    puts "There are #{@players.size} players in the game:"
    @players.each do |player|
      puts player
    end
    1.upto(rounds) do |n|
      puts "\nRound #{n}:\n"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    puts "\n#{@title} Stats:"
    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end
    puts "\n#{wimpy_players.size} wimply players:"
    wimpy_players.each do |player|
      puts "#{player.name} (#{player.health})"
    end
  end
end
