require 'game'

describe Game do
  before(:each) do
    @player = double("player")
    @player2 = double("player 2")
    @game = Game.new(@player, @player2)
  end

  it 'initializes with 2 players as instant vars' do
    expect(@game).to respond_to(:player1)
    expect(@game).to respond_to(:player2)
  end

  describe '#attack' do
    it 'attacks the other player' do
      expect(@player).to receive(:get_hit)
      @game.attack(@player)
    end
  end

  describe '#switch_turns' do
    it 'switches turns to the other person' do
      expect {@game.switch_turns}.to change{@game.player1_turn}.from(true).to(false)
    end
  end


end
