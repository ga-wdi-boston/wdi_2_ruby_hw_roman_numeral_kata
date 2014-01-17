require 'pry'

class RomanNum < String
	attr_accessor :roman
	def initialize(value)
		@roman = value
	end

	def to_i
		weird_chars = [['iv', 4], ['ix', 9], ['xc', 90], ['cd', 400], ['cm', 900]]
		normal_chars = [['m', 1000], ['d', 500], ['c', 100],['l', 50], ['x', 10], ['v', 5], ['i', 1]]
		result = 0
		while self.roman.length != 0
			weird_chars.each do |group|
				if self.sub!(group[0], '')
					result += group[1]
				end
			end
			normal_chars.each do |group|
				if self.roman.sub!(group[0], '')
					result += group[1]
				end
			end
		end
		result
	end
end


