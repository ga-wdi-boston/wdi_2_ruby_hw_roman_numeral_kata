require 'pry'

class RomanNum
	attr_accessor :roman
	def initialize(value)
		@roman = value.upcase
		self.to_i
	end

	def to_i
		weird_chars = [['IV', 4], ['IX', 9], ['XC', 90], ['CD', 400], ['CM', 900]]
		normal_chars = [['M', 1000], ['D', 500], ['C', 100],['L', 50], ['X', 10], ['V', 5], ['I', 1]]
		result = 0
		counter = 0
		while self.roman.length > 0
			raise "Invalid entry - not a roman numeral" unless counter <= 100
			weird_chars.each do |group|
				if self.roman.sub!(group[0], '')
					result += group[1]
				end
			end
			normal_chars.each do |group|
				if self.roman.sub!(group[0], '')
					result += group[1]
				end
			end
			counter += 1
		end
		result
	end
end

# number333 = RomanNum.new("XIX").to_i
# number2 = RomanNum.new("XIX")
# integer = number2.to_i


# puts integer

# puts number333

