class Frame
  
  def roll(roll_one, roll_two = 0)
    strike = Strike.new(roll_one, roll_two)
    spare = Spare.new(roll_one, roll_two)
    regular = Regular.new(roll_one, roll_two)

    [spare, strike, regular].each do |scoring|
      return scoring.set_score if scoring.equals?
    end
  end

end

class Rolls
  def initialize(roll_one, roll_two)
    if roll_two > 0
      @rolls = 2
      @score = roll_one + roll_two
    else
      @rolls = 1
      @score = roll_one
    end
  end
end

class Strike < Rolls
  def equals?
    true if @score == 10
  end
  def set_score
    @score = 'X'
  end
end

class Spare < Rolls
  def equals?
    true if @score == 10 && @rolls == 2
  end
  def set_score
    @score = '/'
  end
end

class Regular < Rolls
  def equals?
    true
  end
  def set_score
    @score
  end
end