class Game

  attr_reader :player1_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @player1_turn = true
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.get_hit
    switch_turns
  end

  def switch_turns
    @player1_turn = !@player1_turn
  end

end
