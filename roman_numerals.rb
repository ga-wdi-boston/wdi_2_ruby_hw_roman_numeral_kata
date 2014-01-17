require 'pry'

def roman_numerals(number)

	number = number.to_s

	ones_integer = number[-1].to_i
	tens_integer = number[-2].to_i

	ones_roman = ''
	tens_roman = ''

	# Evalutes ones place in roman
	if ones_integer <= 3
		ones_roman = 'I' * ones_integer
	elsif ones_integer == 4
		ones_roman = 'IV'
	elsif ones_integer >= 5 && ones_integer < 9
		ones_roman = 'V' + 'I' * (ones_integer % 5)
	else
		ones_roman = 'IX'
	end

	#Evaluated tens place in roman
	if tens_integer <= 3
		tens_roman = 'X' * tens_integer
	end

	roman_string = tens_roman + ones_roman
	roman_string

end

