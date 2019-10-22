class Passenger
  attr_accessor :id, :name, :last_name, :address, :phone, :years, :type
  
  def initialize(id, name, last_name, address, phone, years)
    @id, @name, @last_name, @address, @phone, @years =  id, name, last_name, address, phone, years
  end
end

class Child < Passenger
  def initialize(id, name, last_name, address, phone, years)
    super(id, name, last_name, address, phone, years)
  end
end

class Adult < Passenger
  def initialize(id, name, last_name, address, phone, years)
    super(id, name, last_name, address, phone, years)
  end
end