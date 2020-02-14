# frozen_string_literal: true

class Language
  $reader = 'ABCD'
  @@count = 0

  attr_reader :language_name
  attr_reader :topic_name

  def initialize(language_name, topic_name)
    @language_name = language_name
    @topic_name = topic_name
    @@count += 1
  end

  def return_name
    @language_name
  end

  def return_topic
    @topic_name
  end

  def return_count
    @@count
  end
end

$reader2 = 'lol'

object1 = Language.new('Ruby', 'method')
object2 = Language.new('Scala', 'string')

puts 'Language name for object1: ' + object1.return_name
puts 'Topic Name for object1: ' + object1.return_topic

puts 'Language name for object2: ' + object2.return_name
puts 'Topic Name for object2: ' + object2.return_topic

puts $reader
puts $reader2

puts object1.language_name
puts object2.language_name
puts object1.return_count
