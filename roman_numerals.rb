require 'pry'

def to_roman(*num)
	raise "Please enter a single integer from 1-3000" 	unless num.length == 1 && num[0].is_a?(Numeric)

	@num = num[0]

	romans = {
		1000 => "M",
		900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I"
	}

	numbers = []

	romans.each do |k, v|
		while @num >= k
			numbers << v
			@num = @num - k
		end
	end

	numbers.join

end

########################################33

def to_arabic(*string)
	raise "Please enter a single string!" unless string.length == 1 && string[0].is_a?(String)

	@full_roman = string[0]


	# binding.pry

	# create array first
	integer_array = []

	# if there are subtractions, put them into array, and delete them from original array
	if @full_roman["IV"]
		integer_array << 4
		@full_roman.slice!("IV")
	end
	if @full_roman["IX"]
		integer_array << 9
		@full_roman.slice!("IX")
	end
	if @full_roman["XL"]
		integer_array << 40
		@full_roman.slice!("XL")
	end
	if @full_roman["XC"]
		integer_array << 90
		@full_roman.slice!("XC")
	end
	if @full_roman["CD"]
		integer_array << 400
		@full_roman.slice!("CD")
	end
	if @full_roman["CM"]
		integer_array << 900
		@full_roman.slice!("CM")
	end

	# binding.pry

	# at this point:
	# integer_array should contain any subtractive numbers [4,9,40,90,400,900]
	# @full_roman should be a string containing the rest of the numerals, e.g. "XXXVII"

	@full_roman_array = @full_roman.split(//)
	# now i want to convert @full_roman to integers

	# binding.pry

	romans = {
		1000 => "M",
		900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
		90 => "XC",
		50 => "L",
		40 => "XL",
		10 => "X",
		9 => "IX",
		5 => "V",
		4 => "IV",
		1 => "I"
	}

	@full_roman_array.each do |numeral|
		# find the value in the hash, print corresponding key
		arabic_number = romans.key(numeral)
		# append integer to array
		integer_array << arabic_number
	end

	# now sum the whole array
	integer = integer_array.inject(0) {|sum, i|  sum + i }
	integer

	# binding.pry

end

binding.pry




# Laure's answer... my typing is incomplete here
# answer = 0
# conversion_chart.each do |key, value|
# 	while string.index(key).starts_with? == 0
# 		answer += value
# 		string.slice!(key)
# 	end
