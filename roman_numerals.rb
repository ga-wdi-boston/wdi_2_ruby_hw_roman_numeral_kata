require 'pry'

def roman_numerals(number)

	number = number.to_s

	ones_integer = number[-1].to_i
	tens_integer = number[-2].to_i
	hundreds_integer = number[-3].to_i

	ones_roman = ''
	tens_roman = ''
	hundreds_roman = ''

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
	elsif tens_integer == 4
		tens_roman = 'XL'
	elsif tens_integer >= 5 && tens_integer < 9
		tens_roman = 'L' + 'X' * (tens_integer % 5)
	else
		tens_roman = 'XC'
	end

	#Evaluated hundreds place in roman
	if hundreds_integer <= 3
		hundreds_roman = 'C' * hundreds_integer
	end

	roman_string = hundreds_roman + tens_roman + ones_roman
	roman_string

end

