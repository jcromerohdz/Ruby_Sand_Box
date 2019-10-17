def something
end

p self.class

class Message
  @@messages_sent = 0
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent +=1
  end
end

class Email < Message
  def initialize(from, to)
    super
  end
end

my_message = Message.new("Ian", "Alex")

class Machine
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} was created by #{@username} at #{time}."
  end

  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"

class Computer
  @@users = {}

  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "A new files was created"
  end

  def Computer.get_users
    @@users
  end
end

my_computer = Computer.new('Christian', '12345')
