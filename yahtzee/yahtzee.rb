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