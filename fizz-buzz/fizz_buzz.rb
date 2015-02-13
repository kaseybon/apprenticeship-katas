class FizzBuzz
	def initialize(value)
		@value = value
		@return = @value
	end

	def count
		fizz
		@return
	end

	def fizz
		@return = "Fizz" if @value == 3
	end
end