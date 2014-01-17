
def to_roman(int)

  # romans = %w{I V X L C D M}
  romans = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X',
    5 => 'V', 1 => 'I'}

  # special pattern 4
  four = int.to_s[-1] == '4' ? romans[1] + romans[5] : nil
  # special pattern 9
  nine = int.to_s[-1] == '9' ? romans[1] + romans[10] : nil

  # how many 10s are there?
  tens = int / 10
  # how many 5s are there?
  fives = (int - tens * 10) / 5
  # subtract 1 if there is a 9
  fives -= 1 if nine
  # how many 1s are there?
  ones = (int - tens * 10 - fives * 5) / 1

  # Making the parts
  x = romans[10] * tens
  v = romans[5] * fives

  # need to use special cases 9 and 4 here..
  if four
    i = four
  elsif nine
    i = nine
  else
    i = romans[1] * ones
  end

  #### Output ####
  return x << v << i
end
