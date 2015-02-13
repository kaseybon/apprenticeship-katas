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

	def add(remainder,lower,upper,roman)
		if remainder >= lower && remainder < upper
			@minus = lower
			@roman = roman
		end
	end

	def ones(remainder)
		add(remainder,1,4,'I')
	end

	def fives(remainder)
		add(remainder,5,9,'V')
	end

	def tens(remainder)
		add(remainder,10,49,'X')
	end

	def fifties(remainder)
		add(remainder,50,100,'L')
	end
end