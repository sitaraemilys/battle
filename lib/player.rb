class Player
  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize name, hp=DEFAULT_HP
    @name = name
    @hp = hp
    # @alive = true
  end

  def been_hit
    @hp -= rand(10)+1
  end

  def whallop player
    player.been_hit
  end

  def dead?
    @hp <= 0
  end

  def eat_bananas
    @hp += rand(15)
  end

end
