require "spec_helper"
require_relative 'roman_numerals'

describe Numerals do
	let(:number) { Numerals.new 1 }
	subject { number.roman }

	it 'converts the number 1 to I' do
		expect(subject).to eq('I')
	end

	it 'converts the number 2 to II' do
		number.value = 2
		expect(number.roman).to eq('II')
	end

	it 'converts the number 5 to V' do
		number.value = 5
		expect(number.roman).to eq('V')
	end
end