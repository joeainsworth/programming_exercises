require_relative 'playlist'

describe Playlist do

  before do
    @playlist = Playlist.new("Kermit")
  end

  context "being played with one movie" do
    before do
      @initial_rank = 10
      @movie = Movie.new("Goonies", @initial_rank)

      @playlist.add_movie(@movie)
    end

    it "gives the movie a thumbs up if a high number is rolled" do
      allow(WaldorfAndStatler).to receive(:roll_die) { 6 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank + 2)
      allow(WaldorfAndStatler).to receive(:roll_die) { 5 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank + 4)
    end

    it "skips the movie if a medium number is rolled" do
      allow(WaldorfAndStatler).to receive(:roll_die) { 4 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank)
      allow(WaldorfAndStatler).to receive(:roll_die) { 3 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank)
    end

    it "gives the movie a thumbs down if a low number is rolled" do
      allow(WaldorfAndStatler).to receive(:roll_die) { 2 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank - 2)
      allow(WaldorfAndStatler).to receive(:roll_die) { 1 }
      @playlist.play(2)
      expect(@movie.rank).to eq(@initial_rank - 4)
    end
  end

end
