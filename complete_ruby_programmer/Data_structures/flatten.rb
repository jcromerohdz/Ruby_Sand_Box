def flatten(array, result = [])
  array.each do |element|
    if element.kind_of?(Array flatten(element, result)
    else
      result << element
    end
  end 
  result
end

# EASY METHOD:
# array.flatten
puts flatten([[1, 2], [3, 4]])
puts flatten( [[1, [8, 9]], [3, 4]])