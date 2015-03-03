require_relative 'bowling-frame'

class Player
  attr_accessor :game

  def initialize
    @game = []
    @frame = Frame.new
  end

  def turn(score)
    score = @frame.roll(score)
    @game << score
  end

end
