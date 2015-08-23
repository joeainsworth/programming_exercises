beach = { name: "Fistral", tides: "All", type: "Peaky Beacbreak",
                         bottom: "Sand", swell: "SW", wind: "SE" }

puts beach.select { |k,v| v == "Sand" }

puts "Sand bottom" if beach.has_value?("Sand")
