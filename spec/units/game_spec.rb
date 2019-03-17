require 'game'

describe Game do
  before(:each) do
    @game = Game.new
    @player = double("player")
  end

  describe '#attack' do
    it 'attacks the other player' do
      expect(@player).to receive(:get_hit)
      @game.attack(@player)
    end
  end


end
