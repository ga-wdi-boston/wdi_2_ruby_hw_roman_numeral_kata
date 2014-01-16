
ROMAN_MAP = { 1 => "I",
                  4 => "IV",
                  5 => "V",
                  9 => "IX",
                  10 => "X",
                  40 => "XL",
                  50 => "L",
                  90 => "XC",
                  100 => "C",
                  400 => "CD",
                  500 => "D",
                  900 => "CM",
                  1000 => "M" }


def to_roman(num)
	if num == 1
		return "I"
	elsif num == 2
		return "II"
	elsif num == 3
		return "III"
	elsif num == 4
		return "IV"
	else
		return "nope"
	end
end





