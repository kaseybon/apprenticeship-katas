class FizzBuzz
	def initialize(value)
		@value = value
		@return = @value
	end

	def count
		fizz
		buzz
		@return
	end

	def fizz
		@return = "Fizz" if @value % 3 == 0
	end

	def buzz
		@return = "Buzz" if @value % 5 == 0
	end
end