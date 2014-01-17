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
	end
	roman
end



