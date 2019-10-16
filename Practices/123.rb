class Person5
  attr_reader :ids
  attr_writer :ids
  attr_reader :name_persons
  attr_writer :name_persons

  @@hash_person = {}
  @@size = 2
  def add_persons
    i = 0
    while i < @@size
      ids = i
      print 'Enter a name : '
      name_persons = gets.chomp
      @@hash_person[ids] = name_persons
      i += 1
    end
    @@hash_person
  end
end

p = Person5.new
p.ids = 1
puts p.add_persons
