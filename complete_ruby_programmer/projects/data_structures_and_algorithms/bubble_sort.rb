def bubble_sort(arr)
  array_length = arr.length

  return arr if array_length < 2
  max_index = array_length - 2
  swapped_elements = true

  while swapped_elements
    swapped_elements = false

    (0..max_index).each do |i|
      element = arr[i]
      next_element = arr[i+1]

      if element > next_element
        arr[i], arr[i+1] = next_element, element
        swapped_elements = true
      end
    end
  end

  arr

end

p bubble_sort([4,3,1,2])
p bubble_sort([45,33, 1,22])
p bubble_sort([2,32,1,23])
