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
