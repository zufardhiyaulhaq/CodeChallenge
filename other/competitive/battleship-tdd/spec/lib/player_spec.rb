require_relative '../../lib/player'

RSpec.describe 'Player' do
  describe '#initialize' do
    context 'when passing String & Map argument' do
      it 'should return the execpted value name' do
        map = double('map', class: Map)

        expect(Player.new('zufar', map).name).to eql('zufar')
      end
    end

    context 'when passing rogue argument' do
      it 'should return error by passing 0 argument' do
        expect {Player.new}.to raise_error(ArgumentError)
      end

      it 'should return error by passing more than 2 argument' do
        map = double('map', class: Map)

        expect {Player.new('siska', map, 1)}.to raise_error(ArgumentError)
      end

      it 'should error by passing other than String & Map' do
        map = double('map', class: Map)

        expect {Player.new(map, 'zufar')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#add_ship' do
    context 'when calling' do
      it 'should Fail if give other than Coordinate' do
        map = double('map', class: Map)

        expect {Player.new('zufar', map).add_ship(1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#add_missile' do
    context 'when calling' do
      it 'should success if give a Coordinate' do
        map = double('map', class: Map)
        missile = double('missile', class: Coordinate)

        expect {Player.new('zufar', map).add_missile(missile)}.not_to raise_error
      end

      it 'should fail if give other than Coordinate' do
        map = double('map', class: Map)

        expect {Player.new('zufar', map).add_missile('string')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#attack' do
    context 'when calling with Player argument' do
      it 'should success' do
        player1_map = double('map', class: Map)
        player2_map = double('map', class: Map)

        player1 = Player.new('zufar', player1_map)
        player2 = Player.new('shafira', player2_map)

        expect {player1.attack(player2)}.not_to raise_error
      end
    end

    context 'when calling with other argument' do
      it 'should failed' do
        player1_map = double('map', class: Map)
        player1 = Player.new('zufar', player1_map)

        expect {player1.attack(1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#count_ship' do
    it 'return 0 ship' do
      player1_map = double('map', class: Map)
      allow(player1_map).to receive(:count) {0}

      player1 = Player.new('zufar', player1_map)
      expect(player1.count_ship).to eql(0)
    end
  end
end
