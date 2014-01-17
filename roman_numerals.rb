require 'pry'

def roman_numerals(number)

	number = number.to_s

	# Extracts digits in each place value (ones-thousands)
	ones_place = number[-1].to_i
	tens_place = number[-2].to_i
	hundreds_place = number[-3].to_i
	thousands_place = number[-4].to_i


	#Assigns empty strings to each roman place
	ones_roman = ''
	tens_roman = ''
	hundreds_roman = ''
	thousands_roman = ''

	# Evalutes ones place in roman
	if ones_place <= 3
		ones_roman = 'I' * ones_place
	elsif ones_place == 4
		ones_roman = 'IV'
	elsif ones_place >= 5 && ones_place < 9
		ones_roman = 'V' + 'I' * (ones_place % 5)
	else
		ones_roman = 'IX'
	end

	#Evaluated tens place in roman
	if tens_place <= 3
		tens_roman = 'X' * tens_place
	elsif tens_place == 4
		tens_roman = 'XL'
	elsif tens_place >= 5 && tens_place < 9
		tens_roman = 'L' + 'X' * (tens_place % 5)
	else
		tens_roman = 'XC'
	end

	#Evaluated hundreds place in roman
	if hundreds_place <= 3
		hundreds_roman = 'C' * hundreds_place
	elsif hundreds_place == 4
		hundreds_roman = 'CD'
	elsif hundreds_place >= 5 && hundreds_place < 9
		hundreds_roman = 'D' + 'C' * (hundreds_roman % 5)
	else
		hundreds_roman = 'CM'
	end

	#Evaluated thousands place in roman
	if thousands_place <= 4
		thousands_roman = 'M' * thousands_place
	end

	# Adds strings for each place value to get final answer
	roman_string = thousands_roman + hundreds_roman + tens_roman + ones_roman
	roman_string

end

