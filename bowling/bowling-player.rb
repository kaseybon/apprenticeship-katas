require_relative 'bowling-frame'

class Player
  attr_accessor :game

  def initialize
    @game = []
    @frame = Frame.new
  end

  def turn(roll_one, roll_two = 0)
    score = @frame.roll(roll_one, roll_two)
    @game << score
  end

end
