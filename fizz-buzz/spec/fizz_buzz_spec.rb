require "spec_helper"
require_relative "../fizz_buzz"

describe Maths do
	let(:number) { Maths.new 1 }
	subject { number.count }

	it 'passing 1 prints 1' do
		expect(subject).to eq(1)
	end
end