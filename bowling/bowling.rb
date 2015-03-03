class Player
  
  def roll(roll_one, roll_two = 0)
    strike = Strike.new(roll_one, roll_two)
    regular = Regular.new(roll_one, roll_two)

    [strike, regular].each do |scoring|
      return scoring.set_score if scoring.equals?
    end
  end

end

class Score
  def initialize(roll_one, roll_two)
    if roll_two > 0
      @score = roll_one + roll_two
    else
      @score = roll_one
    end
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