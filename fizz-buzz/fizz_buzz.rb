class Count

  def initialize(value)
    @count_to = value
  end

  def output
  	collector = []

  	(1..@count_to).each do |i|
  		fizzbuzz = FizzBuzz.new i
  		i = fizzbuzz.check unless fizzbuzz.check == nil
      collector << i
    end
    
    print collector.join(', ')
  end

end

class FizzBuzz

	def initialize(value)
		@value = value
	end

	def check
		fizzybuzzy = { 15 => "FizzBuzz", 5 => "Buzz", 3 => "Fizz" }

		fizzybuzzy.each do |key, string|
		  return string if @value % key == 0
		end

		return
	end

end