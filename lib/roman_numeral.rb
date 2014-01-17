class Fixnum

  def to_roman
    int = self
    romans = {
      1000  => 'M',
      900   => 'CM',
      500   => 'D',
      400   => 'CD',
      100   => 'C',
      90    => 'XC',
      50    => 'L',
      40    => 'XL',
      10    => 'X',
      9     => 'IX',
      5     => 'V',
      4     => 'IV',
      1     => 'I'
    }

    roman_string = ''
    romans.each do |num, roman|
      multiple_remainder = int.divmod(num)
      roman_string << roman * multiple_remainder[0]
      int = multiple_remainder[1]
    end

    ### Return RomanNum object
    RomanNum.new(roman_string)
  end
end



class RomanNum
  attr_accessor :roman

  ## the artist formally known as #to_roman function ##
  def initialize(roman)
    @roman = roman
  end

  def to_i
    romans = {
      'M'   => 1000,
      'CM'  => 900,
      'D'   => 500,
      'CD'  => 400,
      'C'   => 100,
      'XC'  => 90,
      'L'   => 50,
      'XL'  => 40,
      'X'   => 10,
      'IX'  => 9,
      'V'   => 5,
      'IV'  => 4,
      'I'   => 1
    }
    arabic = 0

    romans.each do |key, int|
      while @roman.index(key) == 0
        arabic += int
        @roman.slice!(key)
      end

    end

    ## raise an error if there is anything left in string
    raise 'Not a valid roman numeral' unless @roman.length == 0

    #### Output #####
    arabic
  end
end



