flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
people = {}

flintstones.each_with_index do |k,v|
  people[k] = v
end

puts people
