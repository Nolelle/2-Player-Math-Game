class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def decrease_life
    self.lives -= 1
  end
end
