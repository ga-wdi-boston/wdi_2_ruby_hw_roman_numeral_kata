class Numbers

	CONVERSION = {1 => "I", 5 => "V"}

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
