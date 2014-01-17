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

def to_arabic(*string)
	raise "Please enter a single string!" unless string.length == 1 && string[0].is_a?(String)

	# split input into an array of characters
	@roman = string[0].split(//)

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

	integer_array = []

	@roman.each do |numeral|
		# find the value in the hash, print corresponding key
		arabic_number = romans.key(numeral)
		# append integer to array
		integer_array << arabic_number
	end

	# now sum the whole array
	integer = integer_array.inject(0) {|sum, i|  sum + i }
	integer

end

binding.pry



# convert 2, for example
# @num = 2
# numbers = []
# first k = 10
# 	is @num greater than or equal to k? no
# 	do nothing, move on to next k
# k = 9
# 	is @num greater than or equal to k? no
# 	do nothing, move on to next k
# k = 5
# k = 4
# k = 1
# 	is @num=2 greater than or equal to k=1? yes
# 	write v="I" to numbers
# 	numbers = ["I"]
# 	redefine @num = @num-k = 2-1 = 1
# 	uh oh... @num=1 so i want to repeat this process for k=1 again, but method moves on to the next key, i think?
