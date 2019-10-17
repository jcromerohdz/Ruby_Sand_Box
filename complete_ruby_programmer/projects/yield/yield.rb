def yield_name(name)
  if block_given?
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  else
    puts "No block is given!"
  end
end

yield_name("Eric") { |n| puts "My name is #{n}." }
yield_name("Christian")
