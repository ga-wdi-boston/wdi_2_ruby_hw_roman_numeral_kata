def to_roman(int)
	roman = ''
	if int <= 3
		i = 1
		while i <= int
			roman += 'I'
			i += 1
		end
	
	elsif int == 4
		roman = 'IV'
	
	elsif int >=5 && int <=8
		i = 6
		roman += 'V'
		while i <= int
			roman += 'I'
			i += 1
		end

	elsif int == 9
		roman = 'IX'
			
	elsif int >= 10 && int <=49
		ten_digit = int / 10
		rest = int % 10
		i = 1
		while i <= ten_digit
			roman += 'X'
			i += 1
		end
		roman = roman + to_roman(rest)
	
	elsif int >= 50 && int <= 99
		ten_digit = (int - 50) / 10
		rest = int % 10
		roman += 'L'
		i = 1
		while i <= ten_digit
			roman += 'X'
			i += 1
		end
		roman = roman + to_roman(rest)
	
	elsif int >= 100 && int <= 499
		hundred_digit = int / 100
		rest = int % 100
		i = 1
		while i <= hundred_digit
			roman += 'C'
			i += 1
		end
		roman = roman + to_roman(rest)
	end
		
	roman
end



