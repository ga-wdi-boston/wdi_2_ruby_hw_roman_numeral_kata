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


def to_arabic(string)

	# Takes input string and creates array of roman characters
	input_array = string.split(//)

	# Creates hash of roman characters and their absolute values
	roman_values = {
		'I' => 1,
		'V' => 5,
		'X' => 10,
		'L' => 50,
		'C' => 100,
		'D' => 500,
		'M' => 1000
	}

	# Creating array of absolute value of each input character
	input_values = input_array.map {|letter| roman_values[letter]}

	# Finds the sign (+/-) of each character based on the character that follow
	input_signs = input_values.map do |value|
		my_index = input_values.index(value)

		if input_values[(my_index + 1)] == nil
			1
		elsif value < input_values[(my_index + 1)]
			-1
		else
			1
		end
	end

	arabic_total = 0

	# Multiplies the value of each character by its signs to find total
	input_values.each do |value|
		my_index = input_values.index(value)

		arabic_total += (value * input_signs[my_index])
	end

	arabic_total
end

