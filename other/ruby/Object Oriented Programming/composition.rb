# Inheritance is defined as an IS-A relationship.
# Human is a animal
# wolf is a animal

# this is example of inheritance
class Animal
  def eat
    puts 'eating'
  end

  def sleep
    puts 'sleeping'
  end

  def talk
    'talk'
  end
end

# this is example of composition
class Movement
  def step
    puts 'step'
  end

  def crawl
    puts 'crawl'
  end
end

class Human < Animal
  def initialize
    #composition
    @movement = Movement.new
  end

  #inheritance
  def talk
    puts super + ' like human'
  end

  #composition
  def move
    @movement.step
  end
end

class Wolf < Animal
  def initialize
    #composition
    @movement = Movement.new
  end

  #inheritance
  def talk
    puts super + ' by howling'
  end

  #composition
  def move
    @movement.crawl
  end
end

puts 'this is human'
human = Human.new
human.eat
human.sleep
human.talk
human.move

puts 'this is wolf'
wolf = Wolf.new
wolf.eat
wolf.sleep
wolf.talk
wolf.move

# Composition is defined as a HAS-A relationship
#  For example, let's say you have Person class and a Car class. You would use composition because a person has a car