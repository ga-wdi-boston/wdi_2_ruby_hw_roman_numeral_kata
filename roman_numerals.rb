def to_roman(num)
	raise "Please enter a single integer from 1-2000" 	unless num.is_a?(Numeric) && num.between?(1,2000)
end
