# frozen_string_literal: true

# # module for bus
# module
# class Vehicle is parent class
class Vehicle
  attr_accessor :vehicle_name
  attr_accessor :vehicle_color
  def initialize(vehicle_name, vehicle_color)
    @vehicle_name = vehicle_name
    @vehicle_color = vehicle_color
  end

  def description
    puts('this is vehicle')
  end
end

# class car is inheritence from vehicle
# overriding description method
class Car < Vehicle
  attr_accessor :car_model
  def initialize(vehicle_name, vehicle_color, car_model)
    super(vehicle_name, vehicle_color)
    @car_model = car_model
  end

  def description
    puts('this is a car')
    # keyword super will also call same method in parent class
    super
  end
end

# class bus is inheritence from vehicle
class Bus < Vehicle
  def display
    puts("this is a bus #{vehicle_name} with color #{vehicle_color}")
    greeting
  end

  private

  def greeting
    puts('hello user')
  end

  public

  # class method
  def self.test
    puts('hello from class')
  end

  # class variable
  @@wheel = 4
  def self.wheel
    @@wheel
  end
end

# call class method
Bus.test
p(Bus.wheel)

# creating object
car_object = Car.new('Avanza', 'blue', '2020')
bus_object = Bus.new('BMW', 'red')

# call
car_object.description
bus_object.description
bus_object.display

begin
  bus_object.greeting
rescue NoMethodError => e
  puts(e.inspect)
end

# call the variable inside the class
puts car_object.vehicle_name
puts car_object.vehicle_color
puts car_object.car_model


