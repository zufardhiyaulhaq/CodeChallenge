require_relative '../../lib/map'

RSpec.describe 'Map' do
  describe '#initialize' do
    context 'when called without argument' do
      it 'should return error' do
        expect {Map.new}.to raise_error(ArgumentError)
      end
    end

    context 'when called by passing integer' do
      it 'should success when passing positive integer' do
        Map.new(5)
      end

      it 'should return error when passing negative integer' do
        expect {Map.new(-1)}.to raise_error(ArgumentError)
      end

      it 'should return error when passing zero integer' do
        expect {Map.new(0)}.to raise_error(ArgumentError)
      end
    end

    context 'when called by passing non integer' do
      it 'should return error' do
        expect {Map.new('test')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#change' do
    subject(:map) {Map.new(2)}

    context 'when called by passing Coordinate in first argument' do
      it 'will success if coordinate axis is in array range' do
        coordinate = double('coordinate', class: Coordinate)
        allow(coordinate).to receive(:x_axis) {0}
        allow(coordinate).to receive(:y_axis) {0}

        expect {map.change(coordinate, 'S')}.not_to raise_error
      end

      it 'will change the value' do
        coordinate = double('coordinate', class: Coordinate)
        value = 'S'

        allow(coordinate).to receive(:x_axis) {0}
        allow(coordinate).to receive(:y_axis) {0}

        map.change(coordinate, value)

        expect(map.map).to eql([['S', '_'], ['_', '_']])
      end

      it 'will error if coordinate axis is out of array range' do
        coordinate = double('coordinate', class: Coordinate)
        allow(coordinate).to receive(:x_axis) {2}
        allow(coordinate).to receive(:y_axis) {2}

        expect {map.change(coordinate, 'B')}.to raise_error(RangeError)
      end
    end

    context 'when called by passing other than Coordinate in first argument' do
      it 'will failed' do
        expect {map.change(1, 'B')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#get' do
    subject(:map) {Map.new(2)}
    context 'when call by passing Coordinate' do
      it 'will success' do
        coordinate = double('coordinate', class: Coordinate)
        allow(coordinate).to receive(:x_axis) {1}
        allow(coordinate).to receive(:y_axis) {1}

        expect(map.get(coordinate)).to eql('_')
      end

      it 'will error if coordinate axis is out of array range' do
        coordinate = double('coordinate', class: Coordinate)
        allow(coordinate).to receive(:x_axis) {2}
        allow(coordinate).to receive(:y_axis) {1}

        expect {map.get(coordinate)}.to raise_error(RangeError)
      end
    end

    context 'when called by passing other than Coordinate' do
      it 'will failed' do
        expect {map.get('asdasd')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#count' do
    subject(:map) {Map.new(2)}
    context 'when call by passing value' do
      it 'will return count of value' do
        expect(map.count('_')).to eql(4)
      end
      it 'will return count of value' do
        coordinate = double('coordinate', class: Coordinate)
        allow(coordinate).to receive(:x_axis) {0}
        allow(coordinate).to receive(:y_axis) {1}

        map.change(coordinate, 'B')
        expect(map.count('B')).to eql(1)
      end
    end
  end

  describe '@map' do
    grid = 2
    subject(:map) {Map.new(grid)}

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
        expect {map.map = 1}.to raise_error(NoMethodError)
      end
    end

    context 'when try to change value inside the map instance variable' do
      it 'should success when the axis do not exceed the array limit' do
        expect {map.map[0][0] = 'S'}.not_to raise_error
      end

      it 'should change the value' do
        map.map[0][0] = 'S'
        expect(map.map).to eql([['S', '_'], ['_', '_']])
      end
    end
  end
end
