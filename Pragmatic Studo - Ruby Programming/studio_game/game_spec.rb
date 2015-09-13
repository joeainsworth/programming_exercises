require_relative 'game'

describe Game do

  before do
    @game = Game.new("Knuckleheads")

    @initial_health = 100
    @player = Player.new("moe", @initial_health)

    @game.add_player(@player)
  end

  it "should w00t the player if a high number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(5)
    @game.play
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "should skip the player if a medium number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(3)
    @game.play
    expect(@player.health).to eq(@initial_health)
  end

  it "should blam the player if a high number is rolled" do
    allow_any_instance_of(Die).to receive(:roll).and_return(1)
    @game.play
    expect(@player.health).to eq(@initial_health - 10)
  end
end
