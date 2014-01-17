def to_roman(number)
  conversion_chart = {
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
  answer = ''
  conversion_chart.keys.each do |divisor|
    array = number.divmod(divisor)
    answer << conversion_chart[divisor] * array[0]
    number = array[1]
  end
  answer
end


def to_arabic(string)
  conversion_chart = {
    "M" => 1000,
    "CM" => 900,
    "D" => 500,
    "CD" => 400,
    "C" => 100,
    "XC" => 90,
    "L" => 50,
    "XL" => 40,
    "X" => 10,
    "IX" => 9,
    "V" => 5,
    "IV" => 4,
    "I" => 1
  }
  answer = 0
  conversion_chart.keys.each do |roman|
    if string.include?(roman)
      answer += conversion_chart[roman]
    end
  end
  answer
end
