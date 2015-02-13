require "spec_helper"
require_relative "../fizz_buzz"

describe FizzBuzz do
	it 'return 1 when passed 1' do
		fizzbuzz = FizzBuzz.new 1
		expect(fizzbuzz.count).to eq(1)
	end
	it 'return Fizz when passed 3' do
		fizzbuzz = FizzBuzz.new 3
		expect(fizzbuzz.count).to eq('Fizz')
	end
	it 'return Buzz when passed 5' do
		fizzbuzz = FizzBuzz.new 5
		expect(fizzbuzz.count).to eq('Buzz')
	end
	it 'return Fizz when passed 9' do
		fizzbuzz = FizzBuzz.new 9
		expect(fizzbuzz.count).to eq('Fizz')
	end
	it 'return Buzz when passed 10' do
		fizzbuzz = FizzBuzz.new 10
		expect(fizzbuzz.count).to eq('Buzz')
	end
	it 'return FizzBuzz when passed 15' do
		fizzbuzz = FizzBuzz.new 15
		expect(fizzbuzz.count).to eq('FizzBuzz')
	end
end