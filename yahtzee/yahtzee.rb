require 'rspec'

describe 'Calculate' do
	it 'adds die' do
		expect(calculate([1,1,1,1,1])).to eq(5)
	end
end

def calculate(dice)
	dice.reduce(:+)
end