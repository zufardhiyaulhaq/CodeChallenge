require_relative '../../lib/map'

RSpec.describe 'Map' do
  describe '#initialize' do
    context 'when called without argument' do
      it 'should return error' do
        expect { Map.new }.to raise_error(ArgumentError)
      end
    end

    context 'when called by passing integer' do
      it 'should success when passing positive integer' do
        Map.new(5)
      end

      it 'should return error when passing negative integer' do
        expect { Map.new(-1) }.to raise_error(ArgumentError)
      end

      it 'should return error when passing zero integer' do
        expect { Map.new(0) }.to raise_error(ArgumentError)
      end
    end

    context 'when called by passing non integer' do
      it 'should return error' do
        expect { Map.new('test') }.to raise_error(ArgumentError)
      end
    end
  end

  describe '.map' do
    grid = 5
    subject(:map) { Map.new(grid) }

    context "when give #{grid}" do
      it "should return #{grid} line" do
        expect(map.map.length).to eql(grid)
      end

      it "should return #{grid} column" do
        expect(map.map[0].length).to eql(grid)
      end
    end

    context 'when try to write' do
      it 'should return error' do
        expect { map.map = 1 }.to raise_error(NoMethodError)
      end
    end
  end
end
