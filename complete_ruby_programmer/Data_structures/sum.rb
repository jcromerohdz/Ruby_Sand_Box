def add(n)
  if n == 1
    return n
  end
  n + add(n - 1)
end

def sum(number)
    if number == 1
        return number
    end
    number + sum(number - 1)
end
puts sum(4)
puts sum(10)