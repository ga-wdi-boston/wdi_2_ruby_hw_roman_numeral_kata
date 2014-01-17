class RomanNum
  attr_accessor :roman_string
  def initialize(stringy)
    raise "Not a valid Roman numeral!" if stringy =~ /[^IVXLCDM]/
    @roman_string = stringy
  end

  def to_i
    int = 0
    conv = [
            ["M", 1000],
            ["CM", 900],
            ["D", 500],
            ["CD", 400],
            ["C", 100],
            ["XC", 90],
            ["L", 50],
            ["XL", 40],
            ["X", 10],
            ["IX", 9],
            ["V", 5],
            ["IV", 4],
            ["I", 1],
            ]
    loop_count = 0
    while @roman_string.length > 0
      conv.each.each do |roman, arabic|
        if @roman_string.index(roman) == 0
          int += arabic
          @roman_string.slice!(roman)
        end
      end
      loop_count += 1
      raise "Not a valid Roman numeral!" if loop_count >= 100
    end
    int
  end

  def to_s
    @roman_string
  end
end

class Fixnum
  def to_roman
    conv = [
        ["M", 1000],
        ["CM", 900],
        ["D", 500],
        ["CD", 400],
        ["C", 100],
        ["XC", 90],
        ["L", 50],
        ["XL", 40],
        ["X", 10],
        ["IX", 9],
        ["V", 5],
        ["IV", 4],
        ["I", 1],
        ]
    answer = ''
    int = self
    conv.each.each do |roman, arabic|
      while int >= arabic
        answer += roman
        int    -= arabic
      end
    end
    RomanNum.new(answer)
  end
end
