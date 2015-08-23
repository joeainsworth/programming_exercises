person = {name: "Bob", height: "6'2", weight: "70kg", hair: "Brown" }

person.each_key { |key| puts key }
person.each_value { |val| puts val }
person.each { |k, v| puts "#{k}: #{v}"}
