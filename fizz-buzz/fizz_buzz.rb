class FizzBuzz
	def initialize(value)
		@value = value
		@return = @value
		@fizzybuzzy = { 3 => "Fizz", 5 => "Buzz", 15 => "FizzBuzz" }
	end

	def count
		@fizzybuzzy.each do |key, array|
			check(key, array)
		end
		@return
	end

	def check(num, string)
		@return = string if @value % num == 0
	end
end