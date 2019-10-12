# frozen_string_literal: true

def bubble_sort(arr)
  array_length = arr.length
  return arr if array_length < 2

  max_index = array_length - 2
  swapped_elements = true

  while swapped_elements
    swapped_elements = false

    (0..max_index).each do |i|
      element = arr[i]
      next_element = arr[i + 1]
      next unless element > next_element

      arr[i] = next_element
      arr[i + 1] = element
      swapped_elements = true
    end
  end

  arr
end

def bubble_sort_by(arr)
  if block_given?
    swap = -1
    while swap != 0
      swap = 0
      (0..(arr.length - 2)).each do |i|
        if yield(arr[i], arr[i + 1]).positive?
          arr[i], arr[i + 1] = arr[i + 1], arr[i]
          swap += 1
        end
      end
    end
  else
    arr.sort unless  arr
    raise "Block is needed!"
  end

  puts '--------------'
  if arr.class.to_s == "Array"
    output = arr.join(', ')  
    puts "[#{output}]"
  else
    raise "No block is given"
  end
  
end

p bubble_sort([4, 3, 78, 2, 0, 2])
u = nil
bubble_sort_by(u) { |left, right| left.length - right.length }

