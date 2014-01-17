
# Symbol  Value
# I 1
# V 5
# X 10
# L 50
# C 100
# D 500
# M 1,000


def to_roman(int)
  romans = %w{I V X L C D M}
  return romans[0] * int if int < 4
  return romans[1] if int % 5 == 0
  return romans[0] << romans[1] if int % 5 == 4
  if (6...10).include?(int)
    romans[1] << (romans[0] * (int - 5))
  end
end
