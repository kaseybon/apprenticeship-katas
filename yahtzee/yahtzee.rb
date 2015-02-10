require 'rspec'

describe 'Calculate' do
	it 'adds die' do
		expect(calculate([1,1,1,1,1])).to eq(5)
	end
	it 'adds aces' do
		expect(calculate([1,1,2,2,3])).to eq(2)
	end
end

def calculate(dice)
	temp = dice.count(1)
	dice = temp * 1
end

def chance(dice)
	dice.reduce(:+)
end

def aces(dice)
	temp = dice.count(1)
	dice = temp * 1
end