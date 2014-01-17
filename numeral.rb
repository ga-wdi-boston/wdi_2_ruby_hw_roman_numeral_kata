require 'pry'

def to_roman(int)
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
  conv.each.each do |roman, arabic|
    while int >= arabic
      answer += roman
      int    -= arabic
    end
  end
  answer
end

def to_arabic(str)
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
  while str.length > 0
    conv.each.each do |roman, arabic|
      if str.index(roman) == 0
        int += arabic
        str.slice!(roman)
      end
    end
    loop_count += 1
    raise "Not a valid Roman numeral!" if loop_count >= 100
  end
  int
end
