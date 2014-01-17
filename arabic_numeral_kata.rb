def toArabic(input)

	conversion = {"M"=>1000,"CM"=>900,"D"=>500,"CD"=>400,"C"=>100,"XC"=>90,"L"=>50, "XL"=>40,"X"=>10, "IX"=>9, "V"=>5, "IV"=>4, "I"=>1 }

	ret = 0

	conversion.keys.each do |value|
		if input.include?(value)
			ret += conversion[value]
		end
	end
	ret
end
