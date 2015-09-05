class Parent
  def say_hi
    p "Hi from Parent."
  end
end

puts Parent.superclass

class Child < Parent
  def say_hi
    p "Hi from Child."
  end

  def send
    p "send from Child..."
  end
end

child = Child.new
child.say_hi

son = Child.new
son.send :say_hi

lad = Child.new
lad.send :say_hi
