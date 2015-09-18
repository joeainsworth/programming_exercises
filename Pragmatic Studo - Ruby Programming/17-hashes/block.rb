3.times { puts "Echo" }

10.times do |number|
  puts "#{number} situp"
  puts "#{number} chinup"
  puts "#{number} pushup"
end

1.upto(10) do |number|
  puts "#{number} situp"
  puts "#{number} chinup"
  puts "#{number} pushup"
end

movies = ["Goonies", "Ghostbusters"]
movies.each do |movie|
  puts "Watching #{movie}"
end
