class Player
  
  def roll(pins)
    strike = Strike.new pins
    regular = Regular.new pins

    [strike, regular].each do |scoring|
      return scoring.set_score if scoring.equals?
    end
  end

end

class Score
  def initialize(pins)
    @score = pins
  end
end

class Strike < Score
  def equals?
    true if @score == 10
  end
  def set_score
    @score = 'X'
  end
end

class Regular < Score
  def equals?
    true
  end
  def set_score
    @score
  end
end