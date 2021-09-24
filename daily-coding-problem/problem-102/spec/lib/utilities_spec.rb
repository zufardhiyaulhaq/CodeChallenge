# frozen_string_literal: true

require './lib/utilities'

describe 'Utilities' do
  describe '#subarray_sum' do
    it 'return sub array given correct target' do
      array = [1, 2, 3, 4, 5]
      target = 0
      expect(Utilities.subarray_sum(array, target)).to eql([])
    end
    it 'return sub array given correct target' do
      array = [1, 2, 3, 4, 5]
      target = 1
      expect(Utilities.subarray_sum(array, target)).to eql([1])
    end
    it 'Return sub array given correct target' do
      array = [1, 100, 2, 3, 4, 5]
      target = 5
      expect(Utilities.subarray_sum(array, target)).to eql([2, 3])
    end
    it 'Return sub array given correct target' do
      array = [1, 2, 3, 3, 4, 5]
      target = 12
      expect(Utilities.subarray_sum(array, target)).to eql([2, 3, 3, 4])
    end
    it 'Return sub array given correct target' do
      array = [1, 2, 3, 3, 4, 7]
      target = 14
      expect(Utilities.subarray_sum(array, target)).to eql([3, 4, 7])
    end
    it 'Return sub array given correct target' do
      array = [1, 999, 30, 3, 100, 7]
      target = 103
      expect(Utilities.subarray_sum(array, target)).to eql([3, 100])
    end
    it 'Return sub array given correct target' do
      array = [5, 4, 3, 4, 5]
      target = 11
      expect(Utilities.subarray_sum(array, target)).to eql([4, 3, 4])
    end
    it 'Return sub array given correct target' do
      array = [1, 2, 3]
      target = 3
      expect(Utilities.subarray_sum(array, target)).to eql([1, 2])
    end
  end
end
