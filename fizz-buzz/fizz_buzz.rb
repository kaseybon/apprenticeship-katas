def fizzybuzzy(value)
  fizzbuzz = FizzBuzz.new value
  fizz = Fizz.new value
  buzz = Buzz.new value
  num = Num.new value

  [fizzbuzz, fizz, buzz, num].each do |check|
    if check.check?
      return check.output
    end
  end
end

class PassingValues
  def initialize(value)
    @value = value
  end
end

class FizzBuzz < PassingValues
	def check?
    true if @value % 15 == 0
	end
  def output
    "FizzBuzz"
  end
end

class Fizz < PassingValues
  def check?
    true if @value % 3 == 0
  end
  def output
    "Fizz"
  end
end

class Buzz < PassingValues
  def check?
    true if @value % 5 == 0
  end
  def output
    "Buzz"
  end
end

class Num < PassingValues
  def check?
    true
  end
  def output
    @value
  end
end