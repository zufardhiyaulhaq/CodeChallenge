class Calculator
  def add(*element)
    element.inject(0) {|sum, next_element| sum+next_element}
  end

  def subtract(*element)
    first_element = element.shift
    element.inject(first_element) {|sum, next_element| sum-next_element}
  end

  def multiply(*element)
    first_element = element.shift
    element.inject(first_element) {|sum, next_element| sum*next_element}
  end

  def divide(*element)
    first_element = element.shift
    element.inject(first_element) {|sum, next_element| sum/next_element}
  end
end
