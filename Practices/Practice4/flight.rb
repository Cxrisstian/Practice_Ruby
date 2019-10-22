
class Flight
  attr_accessor :origin, :destination, :passengers
  def initialize(origin, destination)
    @origin = origin
    @destination = destination
    @passengers = []
  end
  def add_passenger(type, id, name, last_name, address, phone, years)
    passengers.push(Passenger_Factory.create_passenger(type, id, name, last_name, address, phone, years))
  end

end
