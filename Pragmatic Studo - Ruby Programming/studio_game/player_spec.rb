require_relative 'player'

describe Player do
  before do
    @initial_health = 150
    @player = Player.new("larry", @initial_health)
    $stdout = StringIO.new
  end

  it "has a capitalised name" do
    expect(@player.name).to eq("Larry")
  end

  it "has an initial health" do
    expect(@player.health).to eq(150)
  end

  it "has a string representation" do
    expect(@player.to_s).to eq("I'm Larry with a health of 150 and a score of 155.")
  end

  it "computes a score as the sum of its health and lenth of name" do
    expect(@player.score).to eq(150 + @player.name.length)
  end

  it "increases health by 15 when w00ted" do
    @player.w00t
    expect(@player.health).to eq(@initial_health + 15)
  end

  it "decreases health by 10 when blammed" do
    @player.blam
    expect(@player.health).to eq(@initial_health - 10)
  end

  context "with a health greater than 100" do

    before do
      @initial_health = 150
      @player = Player.new("Strong man", @initial_health)
    end

    it "should be strong" do
      expect(@player).to be_strong
    end
  end

  context "with a health less than 100" do
    before do
      @initial_health = 100
      @player = Player.new("Weak man", @initial_health)
    end

    it "should not be strong" do
      expect(@player).to_not be_strong
    end
  end

end

