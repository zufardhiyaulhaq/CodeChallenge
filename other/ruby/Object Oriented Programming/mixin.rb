# frozen_string_literal: true

module Greeting
  def display
    puts 'Hello'
  end
end

# include module
class Greetuser
  attr_reader :name
  include Greeting
  def initialize(name)
    @name = name
  end
end

object = Greetuser.new("zufar dhiyaulhaq")
object.display
puts object.name

# extend module
class Niceuser
    attr_reader :name
    extend Greeting
    def initialize(name)
        @name = name
    end
end

object2 = Niceuser.new("Shafira")
# object2.display
Niceuser.display
puts object2.name