# frozen_string_literal: true

# define class
class Hotel
  attr_reader :name

  $global_name
  @name

  @@count = 0

  def initialize(name)
    $global_name = name
    @name = name
    add_hotel
  end

  def self.count_hotel
    @@count
  end

  private

  def add_hotel
    @@count += 1
  end

  public

  def count_hotel
    "total hotel is #{@@count}"
  end
end

puts(Hotel.count_hotel)
puts("global name: #{$global_name}")

puts("\n")

first_hotel = Hotel.new('Grandika')
puts(first_hotel.name)
puts("global name: #{$global_name}")
puts(first_hotel.count_hotel)

puts("\n")

second_hotel = Hotel.new('Indonesia')
puts(second_hotel.name)
puts("global name: #{$global_name}")
puts(second_hotel.count_hotel)

puts("\n")

puts(Hotel.count_hotel)
puts("global name: #{$global_name}")
