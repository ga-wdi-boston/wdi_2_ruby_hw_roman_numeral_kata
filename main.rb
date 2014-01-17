require 'pry'

class Fixnum
	def to_roman
		roman = ''
		num = self
		while num > 0
			if num / 1000 > 0
				roman += 'm' * (num / 1000)
				num = num % 1000
			end

			if num / 500 > 0
				roman += 'd' * (num / 500)
				num = num % 500
			end

			if num / 100 > 0
				roman += 'c' * (num / 100)
				num = num % 100
			end

			if num / 50 > 0
				roman += 'l' * (num / 50)
				num = num % 50
			end
			# binding.pry
			# while num / 10 > 0
			# 	# Handles the case for ix
			# 	if num % 10 == 9 && num / 10 == 1
			# 		roman += 'i'
			# 		num = num - 9
			# 	else
			# 		roman += 'x'
			# 		num = num - 10
			# 	end
			# end
			if num / 10 > 0
				roman += 'x' * (num / 10)
				num = num % 10
			end

			if num == 9
				roman += 'ix'
				num = num - 9
			end

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

puts 19.to_roman
