def to_roman(num)
	roman = []
	if num == 5
		roman << 'V'
	elsif num == 4
		roman << 'IV'
	else
		roman << ('I' * num)
	end
	roman.join
end
