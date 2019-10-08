contacts_directory = []
not_exit = true

while not_exit do
  puts "Please enter a contact name or exit to exit: "
  input = gets.chomp

  if(input == 'exit')
    puts "You chose to exit the program"
    not_exit =false
  else
    print "Please enter a contact phone: "
    phone_input = gets.chomp
    contacts_directory.push({name: input,phone: phone_input})
  end
end

p contacts_directory

contacts_directory.each do |contact|
  if contact[:name] == "Christian"
    puts "I found you!!"
  end
end
