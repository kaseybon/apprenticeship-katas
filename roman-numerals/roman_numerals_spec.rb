require "spec_helper"
require_relative 'roman_numerals'

describe Numerals do
	let(:number) { Numerals.new 1 }
	subject { number.romanize }

	it 'converts the number 1 to I' do
		expect(subject).to eq('I')
	end

	it 'converts the number 2 to II' do
		number.value = 2
		expect(number.romanize).to eq('II')
	end

	it 'converts the number 5 to V' do
		number.value = 5
		expect(number.romanize).to eq('V')
	end

	it 'converts the number 10 to X' do
		number.value = 10
		expect(number.romanize).to eq('X')
	end

	it 'converts the number 15 to XV' do
		number.value = 15
		expect(number.romanize).to eq('XV')
	end

	it 'converts the number 50 to L' do
		number.value = 50
		expect(number.romanize).to eq('L')
	end
end