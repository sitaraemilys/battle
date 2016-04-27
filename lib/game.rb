class Game
  attr_reader :player_1, :player_2

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
  end

  def whallop player
    player.been_hit
  end

  def switch
    temp = @player_1
    @player_1 = @player_2
    @player_2 = temp
  end


end
