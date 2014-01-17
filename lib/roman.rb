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

  [[50, 45],[40, 35],[30, 25], [20, 15],[ 10, 5], [ 5, 1]].each do |key, difference|
    # while num > key
    #   key2 = num.to_i - key.to_i
    #   return roman[key].to_s << roman[key2].to_s
    # end

    while num >= key - difference && num < key
      key3 = difference.to_i
      key4 = num.to_i + key3
      return roman[key3].to_s << roman[key4].to_s
    end
  end
end


