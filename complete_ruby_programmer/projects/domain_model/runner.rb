require_relative "person"

#person1 = Person.new("Christian", "Romero")

#person1.save

# p Person.read 6798

#person = Person.new("Lisa", "Jones")

# person = Person.read 6801
# person.last_name = "Roberts"
# p Person.destroy 6802

person1 = Person.new("Bob", "Thompson")

person1.create

person1.last_name = "Jones"

person1.update

person1 = Person.read person1.person_id

Person.destroy person1.person_id
