require "spec_helper"
require_relative "../fizz_buzz"

describe 'FizzBuzz' do

	it 'return 1 when passed 1' do
		expect(fizzybuzzy(1)).to eq(1)
	end

	it 'return Fizz when passed 3' do
		expect(fizzybuzzy(3)).to eq('Fizz')
	end

	it 'return Buzz when passed 5' do
		expect(fizzybuzzy(5)).to eq('Buzz')
	end

	it 'return Fizz when passed 9' do
		expect(fizzybuzzy(9)).to eq('Fizz')
	end

	it 'return Buzz when passed 10' do
		expect(fizzybuzzy(10)).to eq('Buzz')
	end

	it 'return FizzBuzz when passed 15' do
		expect(fizzybuzzy(15)).to eq('FizzBuzz')
	end

end