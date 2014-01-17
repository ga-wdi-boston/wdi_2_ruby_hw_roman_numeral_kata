def to_roman(num)
  roman = { 1 => "I",
            2 => "II",
            3 => "III",
            4 => "IV",
            5 => "V",
            9 => "IX",
            10 => "X",
            20 => "XX",
            30 => "XXX",
            40 => "XL",
            50 => "L",
            90 => "XC",
            100 => "C",
            400 => "CD",
            500 => "D",
            900 => "CM",
            1000 => "M" }

  return roman[num] if roman.has_key?(num)
[[100, 1], [100, 10], [50, 10], [50, 45],[40, 35],[30, 25], [20, 15],[ 10, 1], [ 5, 1]].each do |key, difference|
    while num > key
      key2 = num.to_i - key.to_i
      return roman[key].to_s << roman[key2].to_s
    end
  end
end
# very limited method.

def to_arabic(roman_numeral)
  roman_numeral.split('').collect do |symbol|
    case symbol
      when "I" then 1
      when "V" then 5
      when "X" then 10
      when "L" then 50
      when "C" then 100
      when "D" then 500
      when "M" then 1000
    end
  end
end


