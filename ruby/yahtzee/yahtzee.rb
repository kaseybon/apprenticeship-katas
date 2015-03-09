# def calculate(dice)
# 	temp = dice.count(1)
# 	dice = temp * 1
# end

class Chance
	def score
		dice.reduce(:+)
	end

class Aces
	temp = dice.count(1)
	dice = temp * 1
end