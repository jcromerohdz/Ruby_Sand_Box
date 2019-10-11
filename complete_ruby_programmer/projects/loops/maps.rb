arr = ['red', 'gree', 'yellow']

arr2 = []

# arr.each do |element|
#   if element != 'yellow'
#     arr2.push(element)
#   end
# end

# arr2 = arr.select do |element|
#          element != 'yellow'
#        end
# arr2 = arr.select {|element| element != 'yellow'}
arr2 = arr.reject {|element| element == 'yellow'}

arr3 = [2,5,6,7]
arr4 = arr3.map {|i| i * 2}

p arr2
p arr4

hash = {one: 1, two: 2, three: 3}
# hash2 = hash.select!{|k, v| v > 2}
hash3 = hash.map {|k, v| v * 100}

# p hash2
p hash3
