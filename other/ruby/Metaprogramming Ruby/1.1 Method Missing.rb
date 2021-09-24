# frozen_string_literal: true

class Glider
  def lift
    puts 'Rising'
  end

  def bank
    puts 'Turning'
  end

  def name(*argument)
    puts 'name:' + argument.to_a.join
  end

  def method_missing(*args, &block)
  end
end

class Nomad
  def initialize(glider)
    @glider = glider
  end

  def do(action, *argument)
    @glider.send(action, *argument)
  end
end

a = Glider.new
b = Nomad.new(a)
b.do('lift')
b.do('bank')
b.do('name', 'zufardhiyaulhaq')
b.do('name', 'haha', 'hihi', 'huhu')
b.do('thisisnomethod', 'thisisargs', 'thisisargs2') { |a| a.to_a }
