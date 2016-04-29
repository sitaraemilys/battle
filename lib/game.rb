class Game
  attr_reader :player_1, :player_2, :attacker, :defender

  def initialize player_1, player_2
    @player_1 = player_1
    @player_2 = player_2
    @attacker = player_1
    @defender = player_2

  end

  def whallop player
    player.been_hit
  end

  def switch
    attack
    defend
  end

  def game_over?
    @player_1.dead? || @player_2.dead?
  end

  private

  def attack
    @attacker == player_1 ? @attacker = player_2 : @attacker = player_1
  end

  def defend
    @defender == player_2 ? @defender = player_1 : @defender = player_2
  end


end
