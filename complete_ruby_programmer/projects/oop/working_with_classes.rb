arr = Array.new(1)

puts Array.class
puts arr.class

# Class => Array => arr

puts "Hello".class
puts 1.class
puts 1.0.class
hash = {foo: "bar"}

puts hash.class

class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def tell_my_name
    puts "My name is #{@first_name} #{@last_name}"
  end

  def walk
    puts "I'm walking"
  end
end

class Pet
  def bark
    puts "woof"
  end
end

person = Person.new("Christian", "Romero")
p person
puts person.class
person.walk
person.tell_my_name
p person.methods

person2 = Person.new("Jose", "Hernandez")
p person2
puts person2.class
person2.walk
person2.tell_my_name

dog = Pet.new
puts dog.class
dog.bark
