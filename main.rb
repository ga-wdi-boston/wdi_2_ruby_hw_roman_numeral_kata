class Fixnum
	def to_roman
		roman = ''
		num = self
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

		while num / 10 > 0
			if num % 10 == 9 && num / 10 == 1
				roman += 'i'
				num = num - 9
			else
				roman += 'x'
				num = num - 10
			end
		end

		if num / 5 > 0
			roman += 'v'
			num = num % 5
		end
		roman
	end
end

puts 1700.to_roman
