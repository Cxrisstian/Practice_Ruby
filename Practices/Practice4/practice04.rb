# class of type person.
class Person
  attr_writer :person_name
  attr_reader :person_name
  # gets a great personalized
  def great
    "Hi #{@person_name}"
  end

  # sets the value of message
  #
  # @param message of type String
  def initialize(message)
    @special_message = message
  end

  # @return a message of personalized
  def get_message
    "#{@person_name} #{@special_message}"
  end
end

person = Person.new('Have a nice day')
person.person_name = 'Cxriss'
puts person.person_name
puts person.great
puts person.get_message

# 2.0
# this class receives the size of the vector and also the values
class Practice4
  @@array_value = []
  puts 'Enter the size for the array'
  @@size = gets.to_i

  # create array
  def array1
    x = 0
    while x < @@size
      print 'Enter a value : '
      @@array_value << gets.chomp
      x += 1
    end
    @@array_value
  end

  # prints array
  def array2
    array1.each_with_index do |element, index|
      puts "#{index}: #{element}"
    end
  end
end

practice = Practice4.new
practice.array2

# 3.0
class Hashes
  @@hash_elements = {}

  def create_hash
    puts 'Enter the size for the hash'
    @@size = gets.to_i
    x=0
    while x < @@size
      print 'Enter a key : '
      @@key = gets.chomp
      print 'Enter a value : '
      @@value = gets.chomp
      @@hash_elements[@@key] = @@value
      x += 1
    end
    @@hash_elements
  end
  def print_hash_key
    p @@hash_elements.keys
  end
  def print_hash_value
    p @@hash_elements.values
  end
  def print_hash
    p @@hash_elements
  end
  def exist_this_key(key='Q')
    @@hash_elements.has_key?(key.upcase)
  end
  def exist_this_value(value='qwerty')
    @@hash_elements.has_value?(value)
  end
end

hashes = Hashes.new
hashes.create_hash
hashes.print_hash_key
hashes.print_hash_value
hashes.print_hash
puts hashes.exist_this_key
puts hashes.exist_this_value

# 4.0
class Person1
  attr_writer :name_person
  attr_writer :age_person
  attr_reader :name_person
  attr_reader :age_person

  def calculate_years
    if age_person < 35
      "The age in hours #{calculate_age}"
    else
      'This value cannot be calculated'
    end
  end

  # calculate age in hours
  # @return age in hours
  def calculate_age
    age_person * 8760
  end

  # @return a message with the age in hours.
  def review_years
    case age_person
    when 1..5 then puts "#{name_person} you age in hours is #{calculate_age} You are a baby"
    when 6..12 then puts "#{name_person} you age in hours is #{calculate_age} You are a child"
    when 13..21 then puts "#{name_person} you age in hours is #{calculate_age} You are a young people"
    when 22..35 then puts "#{name_person} you age in hours is #{calculate_age} You are a adult"
    else
      puts calculate_years
    end
  end
end

person1 = Person1.new
person1.name_person = 'Cxrisstian'
person1.age_person = 2
person1.review_years


