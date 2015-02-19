class Count

  def initialize(value)
    @count_to = value
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