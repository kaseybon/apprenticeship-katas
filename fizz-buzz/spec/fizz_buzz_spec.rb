require "spec_helper"
require_relative "../fizz_buzz"

describe Maths do
	let(:number) { Maths.new 1 }
	subject { number.count }

	it 'passing 1 equals 1' do
		expect(subject).to eq(1)
	end

	it 'passing 2 equals 2' do
		number.value = 2
		expect(subject).to eq(2)
	end

	it 'passing 3 equals Fizz' do
		number.value = 3
		expect(subject).to eq("Fizz")
	end
end