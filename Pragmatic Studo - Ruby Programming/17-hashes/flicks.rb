require_relative 'playlist'

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Ghostbusters", 9)
movie3 = Movie.new("Goldfinger")

playlist1 = Playlist.new("Kermit")
playlist1.add_movie(movie1)
playlist1.add_movie(movie2)
playlist1.add_movie(movie3)

playlist1.play(3)
playlist1.print_stats

# playlist2 = Playlist.new("Fozzie")
# playlist2.add_movie(movie3)

# movie4 = Movie.new("gremlins", 15)
# playlist2.add_movie(movie4)

# playlist2.play
