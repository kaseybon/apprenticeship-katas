class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
		@collector = []
	end

	def roman
		ones
		fives
		@collector.join('')
	end

	def ones
		value.times do 
			@collector << 'I'
		end
	end

	def fives
		@collector = ['V'] if @collector.length == 5
	end
end