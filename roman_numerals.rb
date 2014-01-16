require 'pry'

def roman_numerals(number)

	if number <= 3
		roman_string = 'I' * number
	elsif number == 4
		roman_string = 'IV'
	elsif number >= 5 && number < 9
		roman_string = 'V' + 'I' * (number % 5)
	else
		'IX'
	end

end