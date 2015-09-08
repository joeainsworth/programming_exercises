title = "ghostbusters"

a = title.reverse
puts a

b = a.reverse
puts b

puts title.reverse.reverse

puts title.capitalize.ljust(30, '.')
formatted_title = title.capitalize.ljust(30, '.')
puts formatted_title

rank = 9

puts "#{formatted_title} #{rank}"

def weekday
  current_time = Time.new
  current_time.strftime("%A")
end

def movie_listing(title, rank=0)
  "#{weekday.upcase}: #{title.capitalize} has a rank of #{rank}"
end

puts movie_listing("goonies", 10)
puts movie_listing("ghostbusters", 9)

a_title = "goldfinger"
puts movie_listing(a_title)
