def to_roman(key)
 roman = {1 => 'I',
          5 => 'V',
          10 => 'X',
          50 => 'L',
          100 => 'C',
          500 => 'D',
          1000 => 'M'}  #returns a string
  roman[key]
  return roman[1] + roman[5] if key == 4
end

