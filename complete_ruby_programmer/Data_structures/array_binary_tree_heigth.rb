def binary_tree_height(array_tree)
	#0 Declare a heights array which will store the heights of each sub tree
	heights = []
	#1 Iterate through the tree_array starting from last element down to first
	(tree_array.length - 1).downto(0) do |i|

	#2 For each element, find initial height
	initial_height = tree_array[i] == 0 ? 0 : 1

	# 3 Find height of left child
	left_child_index = tree_array[2*i + 1].nil? ? nil : heights.length - i - 1 #index of left child's height in heights
	left_child_height = left_child_index.nil? ? 0 : heights[left_child_index] 

	# 4 Find height of right child
	right_child_index = tree_array[2*i + 2].nil? ? nil : left_child_index - 1 #index of right child's height in heights
	right_child_height = right_child_index.nil? ? 0 : heights[right_child_index]

	# 5 Find element's total height
	total_height = initial_height + [left_child_height,right_child_height].max

	# 6 Push total height to heights array
	heights.push(total_height)
   
	end
	puts heights[-1]
end
  
  puts binary_tree_height([2, 7, 5, 2, 6, 0, 9])
  # => 3