require 'pry'

class Fixnum
	def to_roman
		values = [['M', 1000], ['CM', 900], ['D', 500], ['CD', 400], ['C', 100],
							['XC', 90], ['L', 50], ['XL', 40], ['X', 10], ['IX', 9], ['V', 5], ['IV', 4], ['I', 1]]
		roman = ''
		num = self
		while num > 0
			values.each do |value|
				if num / value[1] != 0
					roman += (value[0] * (num / value[1]))
				end
				num = num % value[1]
			end
		end
		roman
	end
end


def to_arabic(roman_value)
	num_to_evaluate = roman_value
	weird_chars = [['iv', 4], ['ix', 9], ['xc', 90], ['cd', 400], ['cm', 900]]
	normal_chars = [['m', 1000], ['d', 500], ['c', 100],['l', 50], ['x', 10], ['v', 5], ['i', 1]]
	result = 0
	while num_to_evaluate.length != 0
		weird_chars.each do |group|
			if num_to_evaluate.sub!(group[0], '')
				result += group[1]
			end
		end
		normal_chars.each do |group|
			if num_to_evaluate.sub!(group[0], '')
				result += group[1]
			end
		end
	end
	result
end
