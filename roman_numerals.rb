require 'pry'

def to_roman(*num)
	raise "Please enter a single integer from 1-2000" 	unless num.length == 1 && num[0].is_a?(Numeric)
end


