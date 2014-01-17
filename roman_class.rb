class RomanNum
  attr_accessor :roman_string, :arabic
  def initialize(stringy)
    @roman_string = stringy
    self.to_i # Will raise error if invalid string
  end
  def to_i
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
  while @roman_string.length > 0
    subtractives.each.each do |roman, arabic|
      if @roman_string.sub!(/#{roman}/, '')
        int += arabic
      end
    end
    normal.each.each do |roman, arabic|
      if @roman_string.sub!(/#{roman}/, '')
        int += arabic
      end
    end
    loop_count += 1
    # If we keep looping the string is invalid
    raise "Not a valid Roman numeral!" if loop_count >= 100
  end
end
end
