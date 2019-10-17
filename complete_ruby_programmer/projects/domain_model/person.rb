require "csv"

class Person
  attr_accessor :first_name, :last_name, :person_id
  attr_reader :filename

  def initialize(first_name, last_name, person_id = rand(1000..9999))
    @first_name = first_name
    @last_name = last_name
    @person_id = person_id
    @filename = "#{person_id}-file.csv"
  end

  def self.filename(person_id)
    "#{person_id}-file.csv"
  end

  def valid?
    if (!first_name.nil? && first_name.length > 0) &&
       (!last_name.nil? && last_name.length > 0)
      true
    else
      puts "Cannot save file. Person attributes not valid"
      return false
    end
  end

  def create
    if !File.exist?(filename)
      save
    else
      puts "Cannot create file. File #{filename} already exists for #{person_id}"
      return false
    end
  end

  def update
    # filename = "#{person_id}-file.csv"
    if File.exist?(filename)
      save
    else
      puts "File does not exist, update cannot be performed"
      return false
    end
  end

  def to_csv
    CSV.generate do |csv|
      csv << [first_name, last_name]
    end
  end

  def save
    # filename = "#{person_id}_file.csv"
    save_file = CSV.open(filename, "w") do |csv|
      csv << [first_name, last_name]
    end
    puts "File #{filename} saved for empoyee with ID #{person_id}"
    !save_file.nil?
  end

  def self.read(person_id)
    filename = Person.filename person_id
    if File.exist?(filename)
      File.open(filename, "r") do |file|
        # puts file.read
        record = CSV.parse(file.read)[0]
        p record
        return Person.new(record[0], record[1], person_id)
      end
    else
      puts "Person record does not exist"
    end
  end

  def self.destroy(person_id)
    filename = Person.filename person_id

    if File.exist?(filename)
      File.delete(filename)
      puts "The file #{filename} was destroyed!"
      return true
    else
      puts "File does not exist"
    end
  end
end

# person1 = Person.new('Christian', 'Romero')

# p person1.valid?
# p person1.to_csv
# p person1.save
