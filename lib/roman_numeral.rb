class Fixnum

  def to_roman
    int = self
    romans = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
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
      'CM' => 900,
      'M' => 1000,
      'CD' => 400,
      'D' => 500,
      'XC' => 90,
      'C' => 100,
      'XL' => 40,
      'L' => 50,
      'IX' => 9,
      'X' => 10,
      'IV' => 4,
      'V' => 5,
      'I' => 1
    }
    arabic = 0

    romans.each do |roman, int|
      sym_array = @roman.scan(Regexp.new roman)
      count = sym_array.count
      count.times do
        @roman.slice!(roman)
        arabic += int
      end
    end

    ## raise an error if there is anything left in string
    raise 'Not a valid roman numeral' unless @roman.length == 0

    #### Output #####
    arabic
  end
end



