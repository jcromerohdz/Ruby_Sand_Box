# Infinite loop
# a = 0
# loop do
#   a = a + 1
#   puts a
# end

# While loop
# a = 10
# while a > 5 do
#   a = a - 1
#   puts a
# end

# begin
#   puts "What is the choice?"
#   choice = gets.chomp
# end while choice != "Red"
#
# puts "Your chose is correctly!"

# Break the loop
loop do
  puts "What is your choice?"
  choice =  gets.chomp

  if choice == 'exit'
    puts "Thank you for visiting!"
    break
  end
end
