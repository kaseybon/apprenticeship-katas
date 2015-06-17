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

	it 'converts the number 33 to XXXIII' do
		number.value = 33
		expect(number.romanize).to eq('XXXIII')
	end

	it 'converts the number 4 to IV' do
		number.value = 4
		expect(number.romanize).to eq('IV')
	end

	it 'converts the number 14 to XIV' do
		number.value = 14
		expect(number.romanize).to eq('XIV')
	end

	it 'converts the number 9 to IX' do
		number.value = 9
		expect(number.romanize).to eq('IX')
	end

	it 'converts the number 40 to XL' do
		number.value = 40
		expect(number.romanize).to eq('XL')
	end

	it 'converts the number 44 to XLIV' do
		number.value = 44
		expect(number.romanize).to eq('XLIV')
	end

	it 'converts the number 100 to C' do
		number.value = 100
		expect(number.romanize).to eq('C')
	end

	it 'converts the number 500 to D' do
		number.value = 500
		expect(number.romanize).to eq('D')
	end

	it 'converts the number 1000 to M' do
		number.value = 1000
		expect(number.romanize).to eq('M')
	end

	it 'converts the number 400 to CD' do
		number.value = 400
		expect(number.romanize).to eq('CD')
	end

	it 'converts the number 900 to CM' do
		number.value = 900
		expect(number.romanize).to eq('CM')
	end

	it 'converts the number 789 to DCCLXXXIX' do
		number.value = 789
		expect(number.romanize).to eq('DCCLXXXIX')
	end
end