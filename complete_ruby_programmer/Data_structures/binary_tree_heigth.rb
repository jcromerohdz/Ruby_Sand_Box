 class Node
    attr_reader :data
    attr_accessor :left, :right
  
    def initialize(data)
      @data = data
    end
  end
  
  def array_to_tree(array, i)
    return nil if i >= array.length || array[i] == 0
  
    node = Node.new(array[i])
    node.left = array_to_tree(array, 2*i+1)
    node.right = array_to_tree(array, 2*i+2)
  
    node
  end
  
  def binary_tree_height(array_tree)
    # write your code here
    if array_tree == nil
      return 0
    else
      lDepth = binary_tree_height(array_tree.left)
      rDepth = binary_tree_height(array_tree.right)
      
      if (lDepth > rDepth)
        return lDepth + 1
      else
        return rDepth + 1
      end
    end
  end
  
  array_tree = array_to_tree([2, 7, 5, 2, 6, 0, 9],0)
  puts binary_tree_height(array_tree)
  # => 3