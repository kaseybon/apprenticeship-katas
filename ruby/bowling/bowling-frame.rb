class Frame
  
  def roll(roll_one, roll_two = 0)
    strike = Strike.new(roll_one, roll_two)
    spare = Spare.new(roll_one, roll_two)
    regular = Regular.new(roll_one, roll_two)

    [strike, spare, regular].each do |scoring|
      return scoring.set_score if scoring.is?
    end
  end

end

class Rolls
  def initialize(roll_one, roll_two)
  @roll_one = roll_one
  @roll_two = roll_two
  @score = []
  end
end

class Strike < Rolls
  def is?
    true if @roll_one == 10
  end
  def set_score
    @score = ['X', nil]
  end
end

class Spare < Rolls
  def is?
    true if @roll_one + @roll_two == 10
  end
  def set_score
    @score = [@roll_one, '/']
  end
end

class Regular < Rolls
  def is?
    true
  end
  def set_score
    @score = [@roll_one, @roll_two]
  end
end