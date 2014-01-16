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
		roman
	end
end

puts 1700.to_roman
