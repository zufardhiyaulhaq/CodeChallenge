# frozen_string_literal: true

class ParentClass
  def initialize
    puts 'init parent class'
  end

  def say
    puts 'hello parent class'
  end

  def move
    puts 'move'
  end

  def display(a = 0, b = 0)
    puts("parent class 1st argument #{a}, 2nd argument #{b}")
  end
end

class ChildClass < ParentClass
  # override
  def initialize
    puts 'init child class'
  end

  # override
  def say
    puts 'hello child class'
  end

  def display(a, b)
    # call the display super class with new argument from child (pass all argument)
    super

    # call the display super class, only pass 1 argument
    super a

    # pass all argument
    super a, b

    # call display super class, not pass argument
    super()

    # will run
    puts('subclass')
  end
end

parent = ParentClass.new
parent.say
parent.move
parent.display

puts("\n")
child = ChildClass.new
child.say
child.move
child.display('zufar', 'dhiyaulhaq')
