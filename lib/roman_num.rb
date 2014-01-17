require 'pry'

class RomanNum

	attr_accessor :number

	def initialize(roman_string)

		if roman_string =~ /[^IVXLCDMivxlcdm]/
			raise 'Invalid roman numeral'
		end

		@number = roman_string
	end


	def to_i

		# Takes input string and creates array of roman characters
		input_array = @number.split(//)

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

end
