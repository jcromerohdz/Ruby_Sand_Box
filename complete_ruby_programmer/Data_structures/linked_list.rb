class Node
  attr_accessor :value, :next_node

  def initialize(value, next_node = nil)
	  @value = value
    @next_node = next_node
  end
end

class LinkedList
  #setup head and tail
  attr_accessor :head

  def initialize()
    @head = nil
  end

  def add(number, current=@head)
    # your code here
    @head = Node.new(number)
    current = @head
    if current.next_node
      add(number, current.next_node)
    else
      current.next_node = Node.new(number)
    end
  end

  def get(index, current=@head)
    # your code here
    # puts index
    # puts "/////////"
    # puts current.value
    if current.value == index
      current
    else
      get(index, current.next_node) if  current.next_node
        return @head.next_node.value
    end
  end
end

list = LinkedList.new()

list.add(3)
list.add(5)
list.add(6)
list.add(7)
list.add(8)
list.add(9)




# puts list.head.next_node.value
puts list.get(3)
