def to_roman(num)

  roman_num = ''
  while num >= 1
    roman_num += 'I'
    num -= 1
  end
  roman_num
end
