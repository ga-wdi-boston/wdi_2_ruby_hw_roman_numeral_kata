def to_roman(num)
roman_hash = { 1000 => "M",
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
        1 => "I",   }
        if num == 0
                return "nope"
        else
    roman = ""
    roman_hash.each do |value, letter|
      roman << letter * (num / value)
      num = num % value
    end
    return roman
  end
 end

@removed_chars = []
@anw_array = []

def to_arabic(roman)
	roman_hash = {
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
       8 => "VIII",
       7 => "VII",
       6 => "VI",
       5 => "V",
       4 => "IV",
       3 => "III",
       2 => "II",
       1 => "I",
	}.invert

	# if it can be found directly on the hash; such as I, II, etc...
	anw = roman_hash[roman]

	# if not found on the hash; such as XXI
	if anw.nil?
		# we want to store the last character in the string (XXI -> I)
		@removed_chars << roman[-1,1]

		# then we want to call the function again to process the rest of the string (XX) and so on
		to_arabic(roman[0..-2])
	else
		@anw_array << anw
	end

	if @removed_chars.length > 0

		@anw_array << roman_hash[@removed_chars[0]]
		@removed_chars.shift
	end

end
