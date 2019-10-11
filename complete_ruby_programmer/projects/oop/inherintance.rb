class Animal
  def breathe
    "Breathing"
  end

  def move
    "Moving"
  end
end

class Bear <  Animal
  def likes_honey?
    true
  end
end

class Dog <  Animal
  def wag_tail
    "waging tail"
  end
end

bear = Bear.new
dog = Dog.new

p Animal. superclass
p Bear.superclass

p bear.move
p bear.likes_honey?

p dog.move
p dog.wag_tail

p bear.respond_to?(:breathe)
p bear.respond_to?(:move)
