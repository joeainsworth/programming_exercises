# How do you find where Ruby will look for a method when that method is called?
# How can you find an object's ancestors?
# To get ancestors you call the object followed by .ancestors

module Taste
  def flavour(flavour)
    puts "#{flavour}"
  end
end

class Orange
  include Taste
end

class HotSauce
  include Taste
end

# What is the lookup chain for Orange and HotSauce?
# Orange, Taste, Object, Kernal, BasicObject
# HotSauce, Taste, Object, Kernal, BasicObject

puts "\nOrange Ancestors"
puts Orange.ancestors

puts "\nHotSauce Ancestors"
puts HotSauce.ancestors
