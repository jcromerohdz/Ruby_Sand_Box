class Stack
  attr_accessor :arr

  def initialize()
	  @arr = []
  end

  def push(number)
    # your code here
    @arr.push(number)
  end

  def pop
    # your code here
    @arr.pop
  end
end

stack = Stack.new
stack.push(3)
stack.push(5)
puts stack.pop
# => 5

stack.push(2)
stack.push(7)
puts stack.pop
# => 7

puts stack.pop
# => 2

puts stack.pop
# => 3
