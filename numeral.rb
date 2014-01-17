require 'pry'

def to_roman(int)
  answer = ''
  while int > 0
    # binding.pry
    if int >= 5
      answer += "V"
      int -= 5
    elsif int == 4
      answer += "IV"
      int -= 4
    else
      answer += ("I" * int)
      int = 0
    end
  end
  answer
end
