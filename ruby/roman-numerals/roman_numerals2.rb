class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@collector = []
	end

	def roman
		ones = Ones.new @value
		fives = Fives.new @value

		#value.times do 
		#	@collector << 'I'
		#end

		for calc in [fives, ones]
			if calc.is?
				@collector << calc.convert
			end
		end

		@collector.join('')
	end

	def calculate
		
	end

end

class Ones < Numerals
	def is?
		@value >= 1
	end
	def convert
		@value = @value - 1
		return 'I'
	end
end

class Fives < Numerals
	def is?
		@value >= 5
	end
	def convert
		@value = @value - 5
		return 'V'
	end
end
