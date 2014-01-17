def toArabic(input)

	conversion = {"M"=>1000,"CM"=>900,"D"=>500,"CD"=>400,"C"=>100,"XC"=>90,"L"=>50, "XL"=>40,"X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1 }

	numeral = 0

	for key, value in conversion
		while input.index(key) == 0
			numeral += value
			input.slice!(key)
		end
	end
	numeral
end
