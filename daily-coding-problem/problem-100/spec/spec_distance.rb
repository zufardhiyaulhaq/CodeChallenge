# frozen_string_literal: true

require './lib/distance.rb'

RSpec.describe 'distance problem' do
  describe '#calc_distance' do
    it 'return 0 if empty' do
      array = []
      File.foreach('input.in') { |line| array.push(line.chomp.split(' ').map(&:to_i)) }
      expect(calc_distance(array)).to eql(0)
    end

    it 'return 0' do
      array = []
      File.foreach('input0.in') { |line| array.push(line.chomp.split(' ').map(&:to_i)) }
      expect(calc_distance(array)).to eql(0)
    end

    it 'return 2' do
      array = []
      File.foreach('input1.in') { |line| array.push(line.chomp.split(' ').map(&:to_i)) }
      expect(calc_distance(array)).to eql(2)
    end

    it 'return 4' do
      array = []
      File.foreach('input2.in') { |line| array.push(line.chomp.split(' ').map(&:to_i)) }
      expect(calc_distance(array)).to eql(4)
    end

    it 'return 6' do
      array = []
      File.foreach('input3.in') { |line| array.push(line.chomp.split(' ').map(&:to_i)) }
      expect(calc_distance(array)).to eql(6)
    end
  end
end
