class Player
  DEFAULT_HIT_POINTS = 60
  attr_reader :name, :points

  def initialize(name, points = DEFAULT_HIT_POINTS)
    @name = name
    @points = points
  end

  def reduce
    @points -= 10
  end

end
