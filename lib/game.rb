class Game

  attr_reader :current_player_index, :opponent_player_index, :players

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_player_index = 0
    @opponent_player_index = 1
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def turn
    @current_player_index >= 1 ? @current_player_index = 0 : @current_player_index += 1
    opponent
  end

  def attack
    @players[@opponent_player_index].reduce
  end

  private

  def opponent
    @current_player_index == 0 ? @opponent_player_index = 1 : @opponent_player_index = 0
  end
end
