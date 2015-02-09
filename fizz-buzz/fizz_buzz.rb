class Maths

	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def count
		if @value % 3 == 0
			@value = "Fizz"
		elsif @value % 5 == 0
			@value = "Buzz"
		else
			@value
		end
	end

end