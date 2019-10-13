def alphabetize(arr, rev=false)
 arr.sort!
  if rev
    arr.reverse!
  else
    arr
  end
end

numbers = [5,1,3,8]
rev=true
print alphabetize(numbers, rev)