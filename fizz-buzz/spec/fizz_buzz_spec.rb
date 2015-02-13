require "spec_helper"
require_relative "../fizz_buzz"

describe 'Fizz Buzz' do
	it 'return 1 when passed 1' do
		expect(count(1)).to eq(1)
	end
end