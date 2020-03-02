str = "Hello There!"
new_str = str.split('')
puts new_str.length
chars = {}

new_str.each do |char|
  puts "#{char}"
  unless chars[char]
   chars[char] = 1
  else
   chars[char] += 1
  end
end

puts "Characters: #{chars}"

puts "Max character is: #{chars.key(chars.values.max)}"
