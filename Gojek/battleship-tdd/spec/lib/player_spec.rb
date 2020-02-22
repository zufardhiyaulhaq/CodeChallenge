require_relative '../../lib/player'

RSpec.describe 'Player' do
  describe '#initialize' do
    name = 'zufar'

    context 'when passing string argument' do
      subject(:player) {Player.new(name)}

      it 'should return the execpted value name' do
        expect(player.name).to eql(name)
      end
    end

    context 'when passing rogue argument' do
      it 'should return error by passing 0 or more than 1 argument' do
        expect {Player.new}.to raise_error(ArgumentError)
        expect {Player.new(name, name)}.to raise_error(ArgumentError)
      end

      it 'should error by passing other than String' do
        expect {Player.new(1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#add_map' do
    context 'when calling' do
      subject(:player) {Player.new('zufar')}

      it 'should success if give a Map' do
        map = double('map', class: Map)
        expect {player.add_map(map)}.not_to raise_error
      end

      it 'should Fail if give other then Map' do
        expect {player.add_map(1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#add_ship' do
    context 'when calling' do
      subject(:player) {Player.new('zufar')}

      it 'should success if give a Coordinate' do
        ship = double('ship', class: Coordinate)
        expect {player.add_ship(ship)}.not_to raise_error
      end

      it 'should Fail if give other than Coordinate' do
        expect {player.add_ship(1)}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#add_missile' do
    context 'when calling' do
      subject(:player) {Player.new('zufar')}

      it 'should success if give a Coordinate' do
        missile = double('missile', class: Coordinate)
        expect {player.add_missile(missile)}.not_to raise_error
      end

      it 'should fail if give other than Coordinate' do
        expect {player.add_missile('string')}.to raise_error(ArgumentError)
      end
    end
  end

  describe '#attack' do
    context 'when calling' do
      subject(:player1) {Player.new('zufar')}
      subject(:player2) {Player.new('via')}

      it 'should success if give a Player class' do
        player1_ship = double('ship', class: Coordinate)
        player2_ship = double('ship', class: Coordinate)

        player1_missile = double('missile', class: Coordinate)
        player2_missile = double('missile', class: Coordinate)

        player1.add_ship(player1_ship)
        player2.add_ship(player2_ship)

        player1.add_missile(player1_missile)
        player2.add_missile(player2_missile)

        expect {player1.attack(player2)}.not_to raise_error
      end
    end
  end
end
