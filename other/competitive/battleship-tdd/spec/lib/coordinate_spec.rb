require_relative '../../lib/coordinate'

RSpec.describe 'Coordinate' do
  describe '#initialize' do
    context 'when called without argument' do
      it 'should return error' do
        expect {Coordinate.new}.to raise_error(ArgumentError)
      end
    end

    context 'when called with by passing integer' do
      it 'should success by passing 2 argument' do
        Coordinate.new(1, 2)
      end

      it 'should return error when giving single argument' do
        expect {Coordinate.new(1)}.to raise_error(ArgumentError)
      end

      it 'should return error when giving negative argument' do
        expect {Coordinate.new(-1, -1)}.to raise_error(ArgumentError)
      end
    end

    context 'when called with by passing other than integer' do
      it 'should return error' do
        expect {Coordinate.new(1.2, 2.1)}.to raise_error(ArgumentError)
        expect {Coordinate.new(1, 'haha')}.to raise_error(ArgumentError)
        expect {Coordinate.new('test', 'test')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '.x & .y' do
    x = 1
    y = 2
    subject(:coordinate) {Coordinate.new(x, y)}

    context "when give #{x} x and #{y} y" do
      it "should return #{x} in x coordinate" do
        expect(coordinate.x_axis).to eql(x)
      end

      it "should return #{y} in y coordinate" do
        expect(coordinate.y_axis).to eql(y)
      end
    end

    context 'when try to read' do
      it 'should return error' do
        expect {coordinate.x_axis = 3}.to raise_error(NoMethodError)
        expect {coordinate.y_axis = 5}.to raise_error(NoMethodError)
      end
    end
  end
end
