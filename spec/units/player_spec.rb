require 'player'

describe Player do

  before(:each) do
    @name = double("name")
    @player = Player.new(@name)
    @player2 = Player.new(@name)
  end

  describe '#get_hit' do
    it 'lets attacks inflict damage on the other player' do
      expect { @player.get_hit }.to change{@player.hp}.by(-10)
    end
  end
end
