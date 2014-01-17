class Numbers

	CONVERSION = {1 => "I", 5 => "V", 10 => "X", 50 => "L", 100 => "C", 500 => "D", 1000 => "M"}

	def initialize(number)
		@number = number
	end

	def toRoman
		if CONVERSION[@number]
			return CONVERSION[@number]
		else
			return "I" * @number
		end
	end
end
