require_relative 'movie'

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Ghostbusters", 9)
movie3 = Movie.new("Goldfinger")

movies = [movie1, movie2, movie3]

File.open("movie_rankings.csv", "w") do |file|
  movies.sort.each do |movie|
    file.puts "#{movie.title},#{movie.rank}"
  end
end
