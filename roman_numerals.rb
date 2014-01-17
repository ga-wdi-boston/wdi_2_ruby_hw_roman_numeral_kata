def to_roman(number)
  if number < 4
    'I' * number
  elsif number == 4
    'IV'
  elsif number == 5
    'V'
  elsif number == 10
    'X'
  end
end
