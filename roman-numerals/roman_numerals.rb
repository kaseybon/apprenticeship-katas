class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@minus
		@roman
		@params = { 
			1000 => ['M', 4999],
			900 => ['CM', 999],
			500 => ['D', 899],
			400 => ['CD', 499],
			100 => ['C', 399],
			50 => ['L', 99],
			40 => ['XL', 49],
			10 => ['X', 39],
			9 => ['IX', 9],
			5 => ['V', 8],
			4 => ['IV', 4],
			1 => ['I', 3]
		}
	end

	def romanize
		remainder = @value
		collector = []

		until remainder == 0 do
			# Loop through @params
			@params.each do |key, array|
				add(remainder, key, array[0], array[1])
			end

			# Grab values
			collector << @roman
			remainder -= @minus
		end

		# Make it Roman
		#print collector.join
		collector.join
	end

	def add(remainder, lower, roman, upper)
		if remainder >= lower && remainder <= upper
			@minus = lower
			@roman = roman
		end
	end
end