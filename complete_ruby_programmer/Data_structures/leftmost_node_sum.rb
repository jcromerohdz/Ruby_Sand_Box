def leftmost_nodes_sum(array)
  # your code here

  len = array.length
	ra = []
	sum = 0
	i = 0
	array.size
	until  i == len
		sum += array[i]
		i = ((2*i) + 1])
	end 
	sum
	i = 0
	sum = 0
	exp = 2 ** i - 1
	
	while exp < array.size
	  sum += array[exp]
	  i = i + 1
  
	  exp = 2 ** i - 1
	end
	
	sum
	len.times do |i|
		ra.push(array[(2*i) + 1])
	end
	ra.push(array[0])
	result = ra.reject { |i| i.nil? }
	result.sum
  
  len = array.length
	ra = []
	
	len.times do |i|
		ra.push(array[2*i +1])
	end
	ra.push(array[0])
	result = ra.reject { |i| i.nil? }
	result.sum
	
end

# puts leftmost_nodes_sum([2, 7, 5, 2, 6, 0, 9])
[puts leftmost_nodes_sum(5, 3, 4, 11, 13, 15, 21, 10, 4, 7, 2, 8, 0, 9, 0])