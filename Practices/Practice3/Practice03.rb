# 1.0

require '../Practices/Practice03_Modules'

# class main
class Main
  include Greets
  include Ways
  def m1
    puts 'this is my main XD...'
  end
end

main = Main.new
Greets.hello
main.night
puts Main::AFTERNOON
main.see_you
Ways.bye

# 2.0
# this class
class Calculate
  puts 'Enter radius : '
  @@radius = gets.to_i
  def circle_area
    resp = @@radius * 2 * Math::PI
    "el area es : #{resp} "
  end

  def circle_perimeter
    resp = @@radius * @@radius * Math::PI
    "el perimetro es : #{resp} "
  end
end

calculate = Calculate.new
puts calculate.circle_area
puts calculate.circle_perimeter

# 3.0
class Father
  @@money = 500
  def self.money
    @@money
  end

end

puts Father.money

class Child1 < Father
  @@money_child1 = 10
  @@money = @@money - @@money_child1

  def self.money_child
    @@money_child1
  end
end

class Child2 < Father
  @@money_child2 = 20
  @@money = @@money - @@money_child2

  def self.money_child
    @@money_child2
  end
end

class Child3 < Father
  @@money_child3 = 30
  @@money = @@money - @@money_child3

  def self.money_child
    @@money_child3
  end
end
puts Child1.money_child
puts Child2.money_child
puts Child3.money_child
puts Father.money