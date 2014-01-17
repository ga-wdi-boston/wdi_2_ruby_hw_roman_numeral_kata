CONVERSION = [
    [1000, "M"],
    [900, "CM"],
    [500, "D"],
    [400, "CD"],
    [100, "C"],
    [90, "XC"],
    [50, "L"],
    [40, "XL"],
    [10, "X"],
    [9, "IX"],
    [5, "V"],
    [4, "IV"],
    [1, "I"]
]

def conversion_factors(value)
  CONVERSION.find{|arabic, _| arabic <= value}
end

def toRoman(value)
  return "" if value.zero?
  arabic, roman = conversion_factors(value)
  roman + toRoman(value - arabic)
end
