class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@minus
		@roman
		@params = { 50 => ['L', 100], 10 => ['X', 49], 5 => ['V', 9], 4 => ['IV', 4], 1 => ['I', 3] }
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