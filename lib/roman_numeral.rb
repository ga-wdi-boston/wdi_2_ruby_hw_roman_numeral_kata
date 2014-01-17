
def to_roman(int)

  # romans = %w{I V X L C D M}
  romans = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X',
    5 => 'V', 1 => 'I'}

  num_string = int.to_s
  # special pattern 4
  four = num_string[-1] == '4' ? romans[1] + romans[5] : nil
  # special pattern 9
  nine = num_string[-1] == '9' ? romans[1] + romans[10] : nil

  # how many 1000s are there?
  thousands = int / 1000
  int -= thousands * 1000
  # how many 500s are there?
  five_hundreds = int / 500
  int -= five_hundreds * 500
  # how many 100s are there?
  hundreds = int / 100
  int -= hundreds * 100
  # how many 50s are there?
  fifties = int / 50
  int -= fifties * 500
  # how many 10s are there?
  tens = int / 10
  int -= tens * 10
  # how many 5s are there?
  fives = int / 5
  fives -= 1 if nine # subtract 1 if there is a 9
  int -= fives * 5
  # how many 1s are there?
  ones = int / 1

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
