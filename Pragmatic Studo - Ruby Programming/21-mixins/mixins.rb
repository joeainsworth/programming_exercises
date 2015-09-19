moudle Rankable
  def thumbs_up
    puts "#{@title} got a thumbs up!"
  end
end

class Movie
  include Rankable

  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

class Song
  include Rankable

  def initialize(title, rank)
    @title = title
    @rank = rank
  end
end

movie = movie.new("goonies", 10)
movie.thumbs_up

ruby = song.new("ruby", 10)
ruby.thumbs_up
