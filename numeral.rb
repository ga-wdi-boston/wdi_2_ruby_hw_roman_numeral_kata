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
                  ["IV", 4]
                  ]
  normal = [
            ["V", 5],
            ["I", 1]
          ]
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
  end
  int
end

# Notes for to_arabic
# if string.sub!(/matchthing/, '')
# add the arabic numerals (removes the other stuff)
# do weird characters first, then regular ones
