# class Node
#   attr_accessor :value, :next_node
#
#   def initialize(value, next_node=nil)
#     @value =  value
#     @next_node = next_node
#   end
# end

class Queue
  Node = Struct.new :element, :next

  attr_accessor :head, :tail, :size

  def initialize
    @head, @tail = nil, nil
    @size = 0
  end

  def add(number)
    # your code here
    node = Node.new number, nil
    if @tail
      @tail.next = node
      @tail = node
    else
      @head = @tail = node
    end
    @size += 1
    number
  end

  def remove
    # your code here
    return -1 unless @head
    node = @head
    if @size == 1
      clear
      return node.element
    end
    @head = node.next
    @size -=1
    node.element
  end

  def clear
       @head, @tail = nil, nil
       @size = 0
   end
end

queue = Queue.new

queue.add(3)
queue.add(5)
puts queue.remove
# => 3

queue.add(2)
queue.add(7)
puts queue.remove
# => 5

puts queue.remove
# => 2

puts queue.remove
# => 7
