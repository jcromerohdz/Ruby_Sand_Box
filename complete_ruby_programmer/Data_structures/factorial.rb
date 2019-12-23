
# With no recursion
def factorial_1(n)
  (1..n).inject {|product, n| product * n}
end

puts factorial_1(5)

# With recursion
def factorial_2(n)
  if n == 0
    1
  else
    n * factorial_2(n-1)
  end
end

puts factorial_2(5)
