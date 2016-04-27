class Player
  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize name
    @name = name
    @hp = DEFAULT_HP
  end

  def been_hit
    @hp -= 10
  end

  def whallop player
    player.been_hit
  end

end
