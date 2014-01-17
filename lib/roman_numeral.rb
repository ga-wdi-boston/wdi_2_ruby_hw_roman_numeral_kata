
def to_roman(int)

  # romans = %w{I V X L C D M}
  romans = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X',
    5 => 'V', 1 => 'I'}
  # how many 10s are there?
  tens = int / 10
  # how many 5s are there?
  fives = (int - tens * 10) / 5
  # how many 1s are there?
  ones = (int - tens * 10 - fives * 5) / 1

  # special pattern 4
  if int.to_s[-1] == '4'
    romans[10] * tens << romans[1] << romans[5]
  # special pattern 9
  elsif int.to_s[-1] == '9'
    romans[1] << romans[10] << romans[5] * fives
  else
    # generic pattern
    romans[10] * tens << romans[5] * fives << romans[1] * ones
  end

end
