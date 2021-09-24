# frozen_string_literal: true

require './lib/calculator'

RSpec.describe 'Calculator' do
  describe '#add' do
    it 'return the sum of two number' do
      calculator = Calculator.new
      expect(calculator.add(5, 3)).to eql(8)
    end

    it 'return sum of multiple number' do
      calculator = Calculator.new
      expect(calculator.add(5, 3, 2)).to eql(10)
    end

    it 'return sum of multiple number' do
      calculator = Calculator.new
      expect(calculator.add(5, 3, 2, 1)).to eql(11)
    end
  end

  describe '#subtract' do
    it 'return subtract of two number' do
      calculator = Calculator.new
      expect(calculator.subtract(5, 3)).to eql(2)
    end

    it 'return subtract of multiple number' do
      calculator = Calculator.new
      expect(calculator.subtract(9, 2, 1, 2)).to eql(4)
    end
  end

  describe '#multiply' do
    it 'return multiply 2 number' do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5)).to eql(15)
    end

    it 'return multiply multi number' do
      calculator = Calculator.new
      expect(calculator.multiply(3, 5, 2)).to eql(30)
    end
  end

  describe '#divide' do
    it 'return divide 2 number' do
      calculator = Calculator.new
      expect(calculator.divide(12, 3)).to eql(4)
    end

    it 'return divide multi number' do
      calculator = Calculator.new
      expect(calculator.divide(21, 7, 1)).to eql(3)
    end
  end
end
