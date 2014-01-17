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
  subtractives = [
                  ["CM", 900],
                  ["CD", 400],
                  ["XC", 90],
                  ["XL", 40],
                  ["IX", 9],
                  ["IV", 4]
                  ]
  normal = [
            ["M", 1000],
            ["D", 500],
            ["C", 100],
            ["L", 50],
            ["X", 10],
            ["V", 5],
            ["I", 1]
          ]

  loop_count = 0 # Used to determine if invalid string (infinite loop)
  while str.length > 0
    subtractives.each.each do |roman, arabic|
      if str.sub!(/#{roman}/, '')
        int += arabic
      end
    end
    normal.each.each do |roman, arabic|
      if str.sub!(/#{roman}/, '')
        int += arabic
      end
    end
    loop_count += 1
    raise "Not a valid Roman numeral!" if loop_count >= 100
  end
  int
end
