# frozen_string_literal: true
require './lib/permutation'

RSpec.describe 'permutation function' do
  describe '#find_permutation' do
    it 'return empty list' do
      array = File.read('input1.in').split(' ').map(&:to_i)
      output_array = [[]]
      expect(find_permutation(array)).to eq(output_array.sort)
    end
    it 'return 1 permutation' do
      array = File.read('input2.in').split(' ').map(&:to_i)
      output_array = [[1]]
      expect(find_permutation(array)).to eq(output_array.sort)
    end
    it 'return array of permutation' do
      array = File.read('input3.in').split(' ').map(&:to_i)
      output_array = [[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1],[1,2,3]]
      expect(find_permutation(array)).to eq(output_array.sort)
    end
  end
end
