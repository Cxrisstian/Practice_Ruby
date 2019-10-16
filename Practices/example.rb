class Register

  attr_reader :quantity_persons
  def initialize(quantity)
    @quantity_persons = quantity
  end
  person0 = Persons.new(@quantity_persons)
  person0.add_persons

  def count_persons
    p @quantity_persons
  end
end

class Persons
  attr_reader :id, :name_person
  attr_writer :name_person

  def initialize(size)
    @hash_person = {}
    @id = 0
    @size = size
  end
  
  def add_persons
    i = 0
    while i < @size
      id = next_person_id
      print 'Enter a name : '
      name_person = gets.chomp
      @hash_person[id] = name_person
      i += 1
    end
    @hash_person
  end


  private
    def next_person_id
      @id += 1
    end
end

register = Register.new(2)
register.count_persons
