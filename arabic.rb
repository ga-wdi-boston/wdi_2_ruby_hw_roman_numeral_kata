require 'pry'

numerals = {
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
        1 => "I",
}

def to_arabic(num, numerals)
  arabic = []
  numerals.each do | numeral , value |
    arabic << value * (num / numeral)
    num = num % numeral
  end
  arabic.join
end

puts to_arabic(199, numerals)
