ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.keep_if { |name, age| if age < 100}
# ages.delete_if { |key, value| value < 100 }
