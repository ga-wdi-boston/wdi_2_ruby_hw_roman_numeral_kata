require 'pry'

def to_roman(int)
	roman = ''
	if int <= 3
		i = 1
		while i <= int
			roman += 'I'
			i += 1
		end
	
	elsif int == 4
		roman = 'IV'
	
	elsif int >=5 && int <=8
		i = 6
		roman += 'V'
		while i <= int
			roman += 'I'
			i += 1
		end

	elsif int == 9
		roman = 'IX'
			
	elsif int >= 10 && int <=49
		ten_digit = int / 10
		rest = int % 10
		i = 1
		while i <= ten_digit
			roman += 'X'
			i += 1
		end
		roman = roman + to_roman(rest)
	
	elsif int >= 50 && int <= 99
		ten_digit = (int - 50) / 10
		rest = int % 10
		roman += 'L'
		i = 1
		while i <= ten_digit
			roman += 'X'
			i += 1
		end
		roman = roman + to_roman(rest)
	
	elsif int >= 100 && int <= 499
		hundred_digit = int / 100
		rest = int % 100
		i = 1
		while i <= hundred_digit
			roman += 'C'
			i += 1
		end
		roman = roman + to_roman(rest)
	
	elsif int >= 500 && int <= 999
		hundred_digit = (int - 500) /100
		rest = int % 100
		roman += 'D'
		i = 1
		while i <= hundred_digit
			roman += 'C'
			i += 1
		end
		roman = roman +to_roman(rest)

	elsif int >= 1000 && int <= 2000
		thousand_digit = int / 1000
		rest = int % 1000
		i = 1
		while i <= thousand_digit
			roman += 'M'
			i += 1
		end
		roman = roman + to_roman(rest)
	end
	roman
end

def to_arabic(string)
	int = 0
	if !(string.include?('V')) && !(string.include?('X')) && !(string.include?('L')) && !(string.include?('C')) && !(string.include?('D'))
		i = string.length
		while i >= 1
			int += 1
			i -= 1
		end

	elsif string == 'IV'
		int = 4
	
	elsif !(string.include?('X')) && !(string.include?('L')) && !(string.include?('C')) && !(string.include?('D'))
		i = string.length
		int += 4
		while i >= 1
			int += 1
			i -= 1
		end
		
	elsif string == 'IX'
			int = 9
	elsif !(string.include?('L'))
			string_rest = string.delete 'X'
			string.slice!(string_rest)

			i = string.length
			while i >= 1
				int += 1
				i -= 1
			end

			int = int * 10 + to_arabic(string_rest)
	elsif !(string.include?('C')) && !(string.include?('D'))
			string_rest = string.delete 'L'
			int = 50 + to_arabic(string_rest)
	elsif !(string.include?('D'))
			string_rest = string.delete 'C'
			string.slice!(string_rest)

			i = string.length
			while i >= 1
				int += 1
				i -= 1
			end
			int = int * 100 + to_arabic(string_rest)
	end
	int
end





