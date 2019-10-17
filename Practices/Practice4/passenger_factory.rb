
class Passenger_Factory
  def self.create_passenger(type, id, name, last_name, address, phone, years)
    case type
    when 'child'
      Child.new(id, name, last_name, address, phone, years)
    when 'Adult'
      Adult.new(id, name, last_name, address, phone, years)
    end
  end
end
