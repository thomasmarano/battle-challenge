class Game

  attr_reader :player1_turn, :loser

  def initialize(player1, player2)

    @players = [player1, player2]
    @player1_turn = true
    @loser

  end

  def self.create_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
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

  def game_over
    if (player1.hp == 0 || player2.hp == 0)
      if player1.hp == 0
        @loser = player1.name
      else
        @loser = player2.name
      end
    end
  end
end
