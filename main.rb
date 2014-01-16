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
		roman
	end
end

puts 20.to_roman
