#duck-typing
class Hotel
  def type(customer)
    customer.type
  end

  def room(customer)
    customer.room
  end
end

class Single
  def type
    puts 'Room is on the fourth floor.'
  end

  def room
    puts 'Per night stay is 5 thousand'
  end
end

class Couple
  def type
    puts 'Room is on the second floor.'
  end

  def room
    puts 'Per night stay is 8 thousand'
  end
end

hotel = Hotel.new
puts 'single person'
single = Single.new
hotel.type(single)
hotel.room(single)

puts 'family'
couple = Couple.new
hotel.type(couple)
hotel.room(couple)
