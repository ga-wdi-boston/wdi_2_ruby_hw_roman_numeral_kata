def to_roman(num)
  roman = { 1 => "I",
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

  roman_num = ''
  if num == 5
    roman_num = 'V'
    num -= 5
  end

  if num == 4
    roman_num = 'IV'
    num -= 4
  end
  while num >= 1
    roman_num += 'I'
    num -= 1
  end
    roman_num
end
