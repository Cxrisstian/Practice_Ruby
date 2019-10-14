# frozen_string_literal: true
# 1.0
# transforms years to hours into a variable and change to uppercase the name.
# @param name is of type string.
# @param age is a type int.
def person_age(name, age)
  age_in_hours = age * 8760
  puts "Hi #{name.upcase}"
  puts "Your #{age} in hours is #{age_in_hours}"
end
puts person_age("Cxristian",18)

# 2.0
# Transforms celsius to fahrenheit
# @param celsius of type float
def celsius_to_fahrenheit(celsius = 0.0)
  fahrenheit = (((9 * celsius) / 5) + 32)
  "the value #{celsius} in fahrenheit is #{fahrenheit}"
end
puts celsius_to_fahrenheit(32.0)

# Transforms fahrenheit to celsius 
# @param fahrenheit of type float
def fahrenheit_to_celsius(fahrenheit = 0.0)
  celsius = (5 * (fahrenheit - 32)) / 9
  "the value #{fahrenheit} in fahrenheit is #{celsius}"
end
puts fahrenheit_to_celsius(1.0)

# 3.0
# prints a passenger name, a destination city and the price of ticket in dollars
#
# @param passenger_name is name of user
# @param price is the price of the ticket without converted
# @param destination is where you want to go
def message_travel(passenger_name, price, destination = 'CBBA')
  "The passenger name is #{passenger_name} with destination to #{destination}
  city and the price of ticket in dollars is #{currency_conversion(price)}"
end

# 4.0
# Converts Currency to Dollars
#
# @param price of type float
# @return transformation is the conversion to dollars
def currency_conversion(price = 0.0)
  exchange = 6.98
  price * exchange
end

puts 'Enter price of ticket : '
price = gets.to_i
puts message_travel('Cxristian', price)

# 5.0
# converts seconds in minutes, seconds in hours.
# @param number_seconds is a number in seconds that converted.
def converter_seconds(number_seconds)
  convert_in_hours = number_seconds / 3600
  convert_in_minutes = number_seconds / 60
  return convert_in_hours, convert_in_minutes
end

puts 'Enter number in seconds : '
number_seconds = gets.to_i
value_hours, value_minutes = converter_seconds(number_seconds)
puts "Value in hours : #{value_hours}, Value in minutes : #{value_minutes}"

# 6.0
# Converts Currency to Dollars
#
# @param price of type float
# @return transformation is the conversion to dollars
def currency_conversions(price = 0.0)
  convert_dollars = price * EXCHANGE_DOLLARS
  convert_euros = price * EXCHANGE_EUROS
  return convert_dollars, convert_euros
end

def print_result
  puts 'Enter price of ticket : '
  price = gets.to_i
  value_dollars, value_euros = currency_conversions(price)
  "#{price} Bs. in dollars are #{value_dollars} and in euros are #{value_euros} "
end

EXCHANGE_DOLLARS = 6.92
EXCHANGE_EUROS = 7.63
puts print_result
