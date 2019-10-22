require 'singleton'
class Main_practice05
    include Singleton
    attr_accessor :users
  def initialize(message, visitors)
    @users = Array.new
    @message = message
    @visitors = visitors
  end

  def create_user(name)
    User.new(name)
  end

  def add_Users(name)
    users.push(create_user(name))
  end
end

class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def print
    "name : #{name} |"
  end
end

class Message
  attr_accessor :message

  def initialize(message)
    @message = message
  end

  def print
    "Welcome to the city"
  end
end

