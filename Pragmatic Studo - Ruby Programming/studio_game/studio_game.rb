class Player
  def initialize(name, health)
    @name = name.capitalize
    @health = health
  end

  def to_s
    "I'm #{@name} with a health of #{@health}."
  end

  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
end

player1 = Player.new("moe", 100)
puts player1

player2 = Player.new("Larry", 60)
puts player2

player3 = Player.new("Curly", 125)
puts player3
player3.blam
puts player3
player3.w00t
puts player3
