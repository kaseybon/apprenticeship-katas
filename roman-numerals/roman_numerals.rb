class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@minus
		@roman
		@params = { 50 => [100, 'L'], 10 => [49, 'X'], 5 => [9, 'V'], 1 => [4, 'I'] }
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
		collector.join
	end

	def add(remainder,lower,upper,roman)
		if remainder >= lower && remainder < upper
			@minus = lower
			@roman = roman
		end
	end
end