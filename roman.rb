require 'pry'

numerals = {
        5 => "V",
        4 => "IV",
        1 => "I"
}

def to_roman(num, numerals)
	roman = []
	numerals.each do | numeral , value |
		roman << value * (num / numeral)
		num = num % numeral
	end
	roman.join
end


# 	end
# 	if num >= 5
# 		num = (num % 5)
# 		roman << 'V'
# 	elsif num == 4
# 		roman << 'IV'

# 	elsif num < 4
# 		roman << ('I' * num)
# 		binding.pry
# 	end
# 	puts roman.join
# end
