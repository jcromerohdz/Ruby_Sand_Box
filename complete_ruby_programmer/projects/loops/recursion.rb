# def helpful(input)
#   return input if input > 5
#   input += 1
#   puts input
#   helpful(input)
# end

def helpful(input)
  puts input
  if input > 5
    return input
  else
    input += 1
    helpful input
  end
end

helpful 0
