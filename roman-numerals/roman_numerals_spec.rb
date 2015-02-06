require "spec_helper"
require_relative 'roman_numerals'

describe Numerals do
	let(:number) { Numerals.new 1 }
	subject { number.roman }

	it 'converts the number 1 to I' do
		expect(subject).to eq('I')
	end

end