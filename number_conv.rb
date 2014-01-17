# attempting a more scalable approach
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

def to_arabic(roman)
	roman_hash_2 = { 1000 => "M",
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
        1 => "I",}
	anw = roman_hash_2.select{|value, letter| letter == roman}
	return anw.keys[0]
end

