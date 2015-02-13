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
end