class Numerals
	attr_accessor :value

	def initialize(value)
		@value = value
	end

	def roman
		collector = []

		value.times do 
			collector << 'I'
		end

		collector = ['V'] if collector.length == 5

		collector.join('')
	end
end