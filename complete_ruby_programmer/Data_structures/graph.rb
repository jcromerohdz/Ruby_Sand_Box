def graph(hash_graph)
  # write your code here
  result = [0]
  key = 0  
  
  while key != 4  
    
    key = hash_graph[key].first
    result << key
  end
  
  result
end

hash = { 
  0 => [2], 
  1 => [4], 
  2 => [5, 0, 3], 
  3 => [2], 
  4 => [1, 5], 
  5 => [4, 2]
}

puts graph(hash)