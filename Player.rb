class Player 
  attr_accessor :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def life_remaining
    "#{@name}:  #{@lives}/3"
  end

end

# P1 = Player.new("Ek")

# puts P1.life_remaining