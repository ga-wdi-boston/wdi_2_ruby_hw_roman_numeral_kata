class Numbers
	attr_accessor :number

	def initialize(number)
		@number = number
	end

	def toRoman(number)
		return 'I' * @number
	end
end
