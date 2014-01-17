
def to_roman(num)
	s = ''
	while num > 0
		while num >= 5
			while num >= 10
				while num >= 50
					if num == 0
					return s
					elsif num < 50
						break
					elsif num >= 90
						s = s + 'XC'
						num = num - 90
					break
					end
					s = s + 'L'
					num = num - 50
				end
				if num == 0
					return s
				elsif num < 10
					break
				elsif num >= 40
					s = s + 'XL'
					num = num - 40
					break
				end
				s = s + 'X'
				num = num - 10
			end
			if num == 9
				s = s + 'IX'
			return s
			elsif num == 0
			return s
			elsif num < 5
				break
			end
			s = s + 'V'
			num = num - 5
	  end

		if num == 4
			s = s +'IV'
			return s
		elsif num == 0
			return s
		else s = s + 'I'
		end
		num = num -1
	end
	s
end

def to_arabic(str)
	i = 1
	for i in 1..2000
		if to_roman(i) == str
			return i
		end
	end
end
