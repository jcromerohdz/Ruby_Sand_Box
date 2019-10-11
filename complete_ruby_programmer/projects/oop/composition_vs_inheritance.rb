class Shape
  def name
    puts self.class
  end
end

module SquarePerimeter
  def calculate(side1, side2)
    2*(side1 + side2)
  end

end

class Oval < Shape
end

class Rectangle < Shape
  include SquarePerimeter
end

class Square < Shape
  include SquarePerimeter
  def area
    #side*side
  end
end

class Circle < Shape

end


square = Square.new
puts square.calculate(2, 2)

rectangle = Rectangle.new
puts rectangle.calculate(2, 4)
