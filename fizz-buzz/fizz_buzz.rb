class Maths

	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def count
		if @value % 3 == 0
			@value = "Fizz"
		else
			@value
		end
	end

end