require_relative 'movie'

names = %w(Goonies Godfather Goldfinger Godfather)
puts names.sort

puts '-' * 5

puts names.sort_by { |w| w.length }

puts '-' * 5

movie1 = Movie.new("Goonies", 10)
movie2 = Movie.new("Godfather", 3)
movie3 = Movie.new("Goldfinger", 7)

movies = [movie1, movie2, movie3]

puts movies.sort
