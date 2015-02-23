 class Bowling

  def initialize
    @score = 0
  end

  def score(first_try, second_try)
    @score = first_try + second_try
  end

end

class Frame

  def first_try
    rand(10)
  end

end