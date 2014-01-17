
def to_roman(num)
	string = num.to_s
	digit_count = string.length
	digits = string.split("")

	roman_string = ""

	u10_array = ["", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]

	u100_array = ["", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]

	u1000_array = ["", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]

	u4000_array = ["", "M", "MM", "MMM", "MMMM",]

	if num < 10
		roman_string << u10_array[num]

	elsif num < 100
		roman_string << u100_array[digits[0].to_i]
		roman_string << u10_array[digits[1].to_i]

	elsif num < 1000
		roman_string << u1000_array[digits[0].to_i]
		roman_string << u100_array[digits[1].to_i]
		roman_string << u10_array[digits[2].to_i]

	elsif num < 4000
		roman_string << u4000_array[digits[0].to_i]
		roman_string << u1000_array[digits[1].to_i]
		roman_string << u100_array[digits[2].to_i]
		roman_string << u10_array[digits[3].to_i]
	end

	return roman_string
end

# attr_accessor :I, :II, :III, :IV, :V, :VI, :VII, :VIII, :IX

def to_arabic(roman_num)

	characters = roman_num.split("")
	length = characters.length
	# Longest number under 10 is VIII (8), four characters
	# Longest number under 100 is  XXXVIII  (38), seven characters

	arabic_num = 0

	u10_hash = {
		"I" => 1,
		"II" => 2,
		"III" => 3,
		"IV" => 4,
		"V" => 5,
		"VI" => 6,
		"VII" => 7,
		"VIII" => 8,
		"IX" => 9
	}

	u100_hash = {
		"X" => 10,			# 1 char
		"XX" => 20,			# 2 chars
		"XXX" => 30,		# 3 chars
		"XL" => 40,			# 2 chars
		"L" => 50,			# 1 char
		"LX" => 60,			# 2 chars
		"LXX" => 70,		# 3 chars
		"LXXX" => 80,		# 4 chars
		"XC" => 90			# 2 chars
	}


	puts characters



	if characters[0] == "I" || characters[0] == "V"
		arabic_num += u10_hash[roman_num]

	elsif characters[0] == "X"
		if length == 2
			arabic_num += u100_hash[characters.join]




		elsif length == 3
			arabic_num += u100_hash[characters[0].join]

		elsif length > 5
		 arabic_num += u100_hash[characters[0..3].join]
		 arabic_num += u10_hash[characters[4..-1].join]







		else
			return -1
		end
	end

	return arabic_num

end

puts to_arabic("XX")
puts to_arabic("LXXXII")


# if length = 3
# XXX = 30
# XIV = 14
# XLI = 41

# 82  :  6  :  4/2
# LXXXII
# LXXX / II

# 88  :  8  :  4/4
#LXXXVIII
#LXXX / VIII










