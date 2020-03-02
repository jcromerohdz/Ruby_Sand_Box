class Node
	attr_reader :data
	attr_accessor :left, :right
	
	def initialize data
		@data = data
	end
end

def array_to_tree(array, index = 0)
  # use your function from the previous challenge
  return nil if index >= array.length || array[index] == 0

  node = Node.new(array[index])
  node.left = array_to_tree(array, 2*index+1)
  node.right = array_to_tree(array, 2*index+2)

  node
end

def search_tree?(array)
	root = array_to_tree(array)
  # write your code here
  search_on_tree(root)
end

def search_on_tree(node, min=nil, max=nil)
  return true if node.nil?
  
  return false if min && node.data < min
  
  return false if max && node.data > max
  
  search_on_tree(node.left, min, node.data) && search_on_tree(node.right, node.data, max)
end

puts search_tree?([10, 4, 12])
# => true

puts search_tree?([10, 5, 7])
# => false