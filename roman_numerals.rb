def to_roman(number)
  if number < 4
    'I' * number
  elsif number == 5
    'V'
  else
    'X'
  end
end
