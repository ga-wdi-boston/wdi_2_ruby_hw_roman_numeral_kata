
def to_roman(num)
	string = num.to_s
	digit_count = string.length
	digits = string.split("")

	roman_string = ""

	u10_array = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

	u100_array = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]

	u1000_array = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]

	if num < 10
		roman_string << u10_array[num]

	elsif num < 100
		roman_string << u100_array[digits[0].to_i]
		roman_string << u10_array[digits[1].to_i]

	elsif num < 1000
		roman_string << u1000_array[digits[0].to_i]
		roman_string << u100_array[digits[1].to_i]
		roman_string << u10_array[digits[2].to_i]



	end

	return roman_string

end

puts to_roman(901)