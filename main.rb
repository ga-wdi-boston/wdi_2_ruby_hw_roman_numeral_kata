require 'pry'

class RomanNum

end

class Fixnum
	def to_roman
		roman = ''
		num = self
		while num > 0

			if num / 1000 > 0
				roman += 'm' * (num / 1000)
			end

			num = num % 1000

			if num / 500 > 0
				roman += 'd' * (num / 500)

			end

			num = num % 500

			if num / 100 > 0
				roman += 'c' * (num / 100)

			end

			num = num % 100

			if num / 50 > 0
				roman += 'l' * (num / 50)
			end

			num = num % 50


			if num / 10 > 0
				roman += 'x' * (num / 10)
			end

			num = num % 10

			if num == 9
				roman += 'ix'

			end

			num = num % 9

			if num / 5 > 0
				roman += 'v'
				num = num % 5
			end

			if num == 4
				roman += 'iv'
				num = num - 4
			end

			roman += 'i' * (num)
			num = num % 1
		end

		roman
	end
end


def to_arabic(roman_value)
	num_to_evaluate = roman_value
	weird_chars = [['iv', 4], ['ix', 9], ['xc', 90]]
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


# def get_next_roman(current_value, roman_break, value)
# 	if current_value / roman_break > 0
# 		this_val = "#{value}" * (current_value / roman_break)
# 		current_value = current_value % roman_break
# 	end
# 	array = [this_val, current_value]
# end



# puts 1000.to_roman
