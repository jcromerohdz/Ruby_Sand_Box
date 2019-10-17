def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

# Add your code below!
symbol_filter = lambda {|x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

puts symbols

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y<"M"}

a_to_m = crew.select(&first_half)

# All this talk of blocks, procs, and lambdas might have your head spinning.
# Let’s take a minute to clarify exactly what each one is:
#
# A block is just a bit of code between do..end or {}.
#   It’s not an object on its own, but it can be passed to methods like .each or
#   .select.
# A proc is a saved block we can use over and over.
# A lambda is just like a proc, only it cares about the number of arguments it
# gets and it returns to its calling method rather than returning immediately.
# There are obviously lots of cases in which blocks, procs, and lambdas can
# do similar work, but the exact circumstances of your program will help you
# decide which one you want to use.
