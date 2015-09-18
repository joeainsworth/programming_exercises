require_relative 'movie'

movie = Movie.new("godfather", 9)

puts "Hit" if movie.rank >= 10

if movie.rank >= 10
  puts "Hit"
else
  puts "Flop"
end
