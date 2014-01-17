def toArabic(input)

	conversion = {

		"M"=>1000,
		"CM"=>900,
		"D"=>500,
		"CD"=>400,
		"C"=>100,
		"XC"=>90,
		"L"=>50,
		"XL"=>40,
		"X"=>10,
		"IX"=>9,
		"V"=>5,
		"IV"=>4,
		"I"=>1

	}

	number = 0

	for roman, arabic in conversion
		while input.index(roman) == 0
			number += arabic
			input.slice!(roman)
		end
	end
	number

# 	conversion.each do |input| index(key) == 0
# 			numeral += value
# 			input.slice!(key)
# 	puts numeral
# end

end
