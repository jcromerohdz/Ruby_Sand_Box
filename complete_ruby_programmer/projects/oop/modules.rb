module Helpful
  def Helpful.tip
    puts "Perhaps you forgot to add a question mark?"
  end
end

  class Person
    def question(sentence)
      "What about #{sentence}"
    end
  end


person1 =  Person.new
puts person1.question "the number of birds in the in the sky"
