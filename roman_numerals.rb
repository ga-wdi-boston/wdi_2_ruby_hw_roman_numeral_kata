def to_roman(*num)
	raise "Please enter a single integer from 1-3000" 	unless num.length == 1 && num[0].is_a?(Numeric)

	@num = num[0]

	conversion_table = {
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

	conversion_table.each do |k, v|
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

	@roman = string[0]

	integer_array = []

	conversion_table_1 = {
		900 => "CM",
    400 => "CD",
		90 => "XC",
		40 => "XL",
		9 => "IX",
		4 => "IV",
	}

	# if there are subtractions, put them into array, and delete them from original array
	conversion_table_1.each do |integer, roman|
		if @roman[roman] # if @roman contains "roman"
			integer_array << integer
			@roman.slice!(roman)
		end
	end

	# now convert the rest of @roman to integers

	# split remaining string into array of characters
	@roman_array = @roman.split(//)

	conversion_table_2 = {
		1000 => "M",
    500 => "D",
    100 => "C",
		50 => "L",
		10 => "X",
		5 => "V",
		1 => "I"
	}

	# convert characters to integers, append to array
	@roman_array.each do |numeral|
		arabic_number = conversion_table_2.key(numeral)
		integer_array << arabic_number
	end

	# now sum the whole array
	integer = integer_array.inject(0) {|sum, i|  sum + i }
	integer

end

# Laure's answer

# def to_roman(number)
#   conversion_chart = {
#     1000 => "M",
#     900 => "CM",
#     500 => "D",
#     400 => "CD",
#     100 => "C",
#     90 => "XC",
#     50 => "L",
#     40 => "XL",
#     10 => "X",
#     9 => "IX",
#     5 => "V",
#     4 => "IV",
#     1 => "I"
#   }
#   answer = ''
#   conversion_chart.keys.each do |divisor|
#     array = number.divmod(divisor)
#     answer << conversion_chart[divisor] * array[0]
#     number = array[1]
#   end
#   answer
# end

# def to_arabic(string)
#   conversion_chart = {
#     "M" => 1000,
#     "CM" => 900,
#     "D" => 500,
#     "CD" => 400,
#     "C" => 100,
#     "XC" => 90,
#     "L" => 50,
#     "XL" => 40,
#     "X" => 10,
#     "IX" => 9,
#     "V" => 5,
#     "IV" => 4,
#     "I" => 1
#   }
#   answer = 0
#   for key, value in conversion_chart
#     while string.index(key) == 0
#       answer += value
#       string.slice!(key)
#     end
#   end
#   answer
# end
