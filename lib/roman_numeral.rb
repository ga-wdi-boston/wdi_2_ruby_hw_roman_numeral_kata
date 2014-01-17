class RomanNum
  attr_accessor :roman

  ## the artist formally known as #to_roman function ##
  def initialize(int)
    # romans = %w{I V X L C D M}
    romans = {1000 => 'M', 500 => 'D', 100 => 'C', 50 => 'L', 10 => 'X',
      5 => 'V', 1 => 'I'}

    #### Special Patterns ####
    num_string = int.to_s
    four = num_string[-1] == '4' ? romans[1] + romans[5] : nil
    nine = num_string[-1] == '9' ? romans[1] + romans[10] : nil
    forty = num_string[-2] == '4' ? romans[10] + romans[50] : nil
    ninety = num_string[-2] == '9' ? romans[10] + romans[100] : nil
    four_hundred = num_string[-3] == '4' ? romans[100] + romans[500] : nil
    nine_hundred = num_string[-3] == '9' ? romans[100] + romans[1000] : nil

    # how many 1000s are there?
    thousands = int / 1000
    int -= thousands * 1000
    # how many 500s are there?
    five_hundreds = int / 500
    five_hundreds -= 1 if nine_hundred ########## The 9
    int -= five_hundreds * 500
    # how many 100s are there?
    hundreds = int / 100
    int -= hundreds * 100
    # how many 50s are there?
    fifties = int / 50
    fifties -= 1 if ninety ########## The 9
    int -= fifties * 50
    # how many 10s are there?
    tens = int / 10
    int -= tens * 10
    # how many 5s are there?
    fives = int / 5
    fives -= 1 if nine ########## The 9
    int -= fives * 5
    # how many 1s are there?
    ones = int / 1

    # Making the parts
    m = romans[1000] * thousands
    d = romans[500] * five_hundreds
    c = romans[100] * hundreds ##### Special
    l = romans[50] * fifties
    x = romans[10] * tens ###### Special
    v = romans[5] * fives
    i = romans[1] * ones

    #### Special Override
    # Special for hundreds
    if four_hundred
      c = four_hundred
    elsif nine_hundred
      c = nine_hundred
    end

    # Special for tens
    if forty
      x = forty
    elsif ninety
      x = ninety
    end

    # Special for ones
    if four
      i = four
    elsif nine
      i = nine
    end

    #### Output ####
    @roman = m << d << c << l << x << v << i
  end

  def to_arabic

  end
end



