class Register
  attr_accessor :quantity_persons, :persons

  def initialize(quantity)
    @quantity_persons = quantity
    @persons = Array.new
    @persons_upper = Array.new
  end
  
  def create_person(name)
    Persons.new(name)
  end

  def add_persons(name)
    persons.push(create_person(name))
  end

  def get_all_persons
    msj = "las personas son : "
    @persons.each do |person|
      msj += "#{person.print}"
    end
    msj
  end
  def count_persons
    "total of persons are : #{persons.size}"
  end
  def print_position_name
    @persons.each_with_index do |person, index|
      puts "position #{index}, #{person.name}"
    end
  end

  def name_upcase
    @persons.each do |person|
      upper = person.name
      @persons_upper.push(upper.upcase)
    end
    @persons_upper
  end

  def print_greets
    @persons.each do |person|
      puts  "good bye #{person.name} "
    end
  end
end

require 'securerandom'
class Persons
  attr_accessor :id, :name

  def initialize(name)
    @id, @name = SecureRandom.hex(13), name
  end

  def print
    " id , #{id} name :  #{name} |"
  end
end

register = Register.new(1)
register.add_persons("Juan")
register.add_persons("carlos")
puts register.get_all_persons
puts register.count_persons
puts register.name_upcase
register.print_position_name
register.print_greets