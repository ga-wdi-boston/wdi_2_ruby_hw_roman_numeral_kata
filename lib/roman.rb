
def to_roman(num)
	s = ''
	while num > 0
		

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
