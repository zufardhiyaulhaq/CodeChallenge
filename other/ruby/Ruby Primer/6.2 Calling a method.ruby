# default value 
def say_hello(name ="Qui-Gon Jinn")
    puts("Hello, #{name}.")
  end

say_hello()
say_hello("zufar")

def introduction(age, gender, *names)
    puts("Meet #{names.join(" ")}, who's #{age} and #{gender}")
  end

introduction(29,"Male","Lucy","Siti","NUrbayah")
introduction(29,"Male","Lucy","NUrbayah")

###
def add(a_number, another_number, options = {})
    sum = a_number + another_number
    sum = sum.abs if options[:absolute]
    sum = sum.round(options[:precision]) if options[:round]
    sum
  end

puts add(1.0134, -5.568)
puts add(1.0134, -5.568, absolute: true)
puts add(1.0134, -5.568, absolute: true, round: true, precision: 2)
puts add(1.0134, -5.568, round: true, precision: 2)

def add(*numbers)
    numbers.inject(0) {|sum, number| sum + number}
  end
  
  def subtract(*numbers)
    first = numbers.shift()
    numbers.inject(first) {|first, number| first - number}
  end
  
  def calculate(*arguments)
    options = arguments[-1].is_a?(Hash) ? arguments.pop : {}
    options[:add] = true if options.empty?
    return add(*arguments) if options[:add]
    return subtract(*arguments) if options[:subtract]
  end