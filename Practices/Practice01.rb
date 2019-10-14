=begin
@Cxristian.
This method show the sum
only with two numbers
=end
puts 'Enter 1st number : '
number1 = gets.to_i
puts 'Enter 2do number : '
number2 = gets.to_i
puts "the sum total is #{number1 + number2}"
# I think that value #{} serves to perform an action inside a string literal..

# converts seconds in minutes, seconds in hours and second in days.
# @param number_seconds is a number in seconds that converted.
def convert_seconds(number_seconds)
  day = number_seconds / (60 * 60 * 24)
  hours = number_seconds / (60 * 60)
  minutes = (number_seconds / 60) % 60
  seconds = number_seconds % 60
  puts "Step #{day} days"
  puts "#{hours} h #{minutes} m #{seconds} s"
end

puts '//// Enter number in seconds : '
number_seconds = gets.to_i
puts convert_seconds(number_seconds)
