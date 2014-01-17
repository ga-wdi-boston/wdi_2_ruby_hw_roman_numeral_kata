def to_roman(number)
  if (1..3).include?(number)
    'I' * number
  elsif number == 4
    'IV'
  elsif number == 5
    'V'
  elsif (6..8).include?(number)
    'V' + ('I' * (number - 5))
  elsif number == 9
    'IX'
  elsif number == 10
    'X'
  end
end
