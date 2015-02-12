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
			for iterate in [fives(remainder), ones(remainder)]
				iterate
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
		if remainder >= 5
			@minus = 5
			@roman = 'V'
		end
	end
end