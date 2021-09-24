require './lib/golbach'

RSpec.describe 'golbach testing' do
  describe '#get_primes' do
    it 'return list [2, 2]' do
      expect(get_primes(4)).to eql([2,2])
    end

    it 'return list [3,7]' do
      expect(get_primes(10)).to eql([3,7])
    end

    it 'return list [3,11]' do
      expect(get_primes(14)).to eql([3,11])
    end

    it 'return list [3, 97' do
      expect(get_primes(100)).to eql([3,97])
    end
  end
end
