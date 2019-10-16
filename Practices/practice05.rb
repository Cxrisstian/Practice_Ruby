class Flight
  attr_reader :origin
  attr_reader :destination
  attr_writer :origin
  attr_writer :destination
  
  def reservation
    name
    last_name
    address
    phone
    years
    if years < 18
      type
    else
      type = 'Child'
    end
  end

  def load_itinerary_flight(origin,destination)

  end

  def add_passenger(quantity)
    if quantity > 80

  end
    end
end

class Passenger
  attr_writer :id, :name, :last_name, :address, :phone, :phone, :years
  attr_reader :id, :name, :last_name, :address, :phone, :phone, :years
  attr_reader :type
  attr_writer :type

  def load_itinerary_passenger(origin,destination)

  end
end