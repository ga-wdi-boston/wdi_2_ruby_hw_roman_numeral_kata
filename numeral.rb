require 'pry'

def to_roman(int)
  conv = [
          ["V",  5],
          ["IV", 4],
          ["I",  1],
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
