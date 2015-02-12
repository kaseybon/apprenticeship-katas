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
			for i in [fifties(remainder), tens(remainder), fives(remainder), ones(remainder)]
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
		if remainder >= 1 && remainder < 4
			@minus = 1
			@roman = 'I'
		end
	end

	def fives(remainder)
		if remainder == 4
			@minus = 4
			@roman = 'IV'
		elsif remainder >= 5 && remainder < 9
			@minus = 5
			@roman = 'V'
		end
	end

	def tens(remainder)
		if remainder == 9
			@minus = 9
			@roman = 'IX'
		elsif remainder >= 10 && remainder < 50
			@minus = 10
			@roman = 'X'
		end
	end

	def fifties(remainder)
		if remainder >= 50 && remainder < 100
			@minus = 50
			@roman = 'L'
		end
	end
end