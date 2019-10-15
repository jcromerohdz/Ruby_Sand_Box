def sliding_maximum(k, array)
  # your code here

  #First part
  deque = Deque.new
  result = []

  #Second part
  for i in (0...array.length) do
    deque.pushBack(array[i]) if deque.is_empty?
    max = get_max(deque)
    #check if the current item in the array is greater than what our max currently is
    if max < array[i]
    #if it is, first remove the max
      remove_max(deque)

    #now set the current index value of the array as the max
      set_max(deque, array[i])
    end
    remove_max(deque) unless max_in_window?((i - k), array, max, deque)
    #check if what's currently in the back is a potential winner
    if deque.topBack and deque.topBack > array[i]
      deque.pushBack(array[i])
    else deque.topBack
      deque.popBack
      deque.pushBack(array[i])
    end
    max = get_max(deque)

    if i >= k - 1
      add_max_to_result(result, max)
    end
  end
  # deque print
  result
end

  def add_max_to_result(result, max)
    result << max
end

def max_in_window?(index, array, max, deque)
    max != array[index]
end

def set_max(deque,max)
    deque.pushFront(max)
end

def remove_max(deque)
    deque.popFront
end

def get_max(deque)
    deque.topFront
end

  # res = []
  #   for i in 0..array.length - k do
  #       max = array[i]
  #       for j in i...i+k do
  #           max = array[j] > max ? array[j] : max
  #       end
  #       res << max
  #   end
  #   res



puts sliding_maximum(3, [1, 3, 5, 7, 9, 2])
# => [5, 7, 9, 9]
