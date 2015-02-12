class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@minus
		@roman
	end

	def romanize
		remainder = @value
		collector = []

		until remainder == 0 do
			# Loop through functions
			for i in [tens(remainder), fives(remainder), ones(remainder)]
				i
				break
			end	

			# Grab values
			collector << @roman
			remainder -= @minus
		end

		# Make it Roman
		collector.join
	end

	def ones(remainder)
		if remainder >= 1 && remainder < 5
			@minus = 1
			@roman = 'I'
		end
	end

	def fives(remainder)
		if remainder >= 5 && remainder < 10
			@minus = 5
			@roman = 'V'
		end
	end

	def tens(remainder)
		if remainder >= 10
			@minus = 10
			@roman = 'X'
		end
	end
end