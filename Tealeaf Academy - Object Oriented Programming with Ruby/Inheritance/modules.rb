module Swimmable
  def swim
    "I'm swimming!"
  end
end

class Animal; end

class Fish < Animal
  include Swimmable           # mixing in swimmable
end

class Mammal < Animal
  def warm_blooded?
    true
  end
end

class Cat < Mammal
end

class Dog < Mammal
  include Swimmable           # mixing in swimmable
end


sparky = Dog.new
neemo  = Fish.new
paws   = Cat.new

sparky.swim
neemo.swim
paws.swim
