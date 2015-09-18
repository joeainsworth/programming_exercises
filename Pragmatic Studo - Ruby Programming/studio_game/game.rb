require_relative 'player'
require_relative 'die'
require_relative 'game_turn'
require_relative 'treasure_trove'

class Game
  attr_reader :title

  def initialize(title)
    @title = title
    @players = []
  end

  def high_score_entry(player)
    formated_name = player.name.ljust(20,".")
    "#{formated_name} #{player.score}"
  end

  def save_high_scores(file="high_scores.txt")
    File.open(file, "w") do |file|
      file.puts "#{@title} High Scores:"
      @players.sort.each do |player, score|
        file.puts high_score_entry(player)
      end
    end
  end

  def load_players(from_file)
    File.readlines(from_file).each do |line|
      add_player(Player.from_csv(line))
    end
  end

  def add_player(name)
    @players << name
  end

  def play(rounds)
    puts "There are #{@players.size} players in the game:"
    @players.each do |player|
      puts player
    end
    treasures = TreasureTrove::TREASURES
    puts "\nThere are #{treasures.count} treasures to be found:"
    treasures.each do |treasure|
      puts "A #{treasure.name} is worth #{treasure.points} points"
    end
    1.upto(rounds) do |n|
      puts "\nRound #{n}:\n"
      @players.each do |player|
        GameTurn.take_turn(player)
        puts player
      end
    end
  end

  def print_name_and_health(player)
    puts "#{player.name} (#{player.health})"
  end

  def print_stats
    strong_players, wimpy_players = @players.partition { |player| player.strong? }
    puts "\n#{@title} Stats:"

    puts "\n#{strong_players.size} strong players:"
    strong_players.each do |player|
      print_name_and_health(player)
    end

    puts "\n#{wimpy_players.size} wimpl players:"
    wimpy_players.each do |player|
      print_name_and_health(player)
    end

    @players.each do |player|
      puts "\n#{player.name}'s point totals:"
      player.each_found_treasure do |treasure|
        puts "#{treasure.points} total #{treasure.name} points"
      end
      puts "#{player.score} grand total points"
    end
  end

  def high_scores
    puts "\n#{@title} High Scores:"
    @players.sort.each { |player| puts high_score_entry(player) }
  end
end
