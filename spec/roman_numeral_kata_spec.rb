require 'spec_helper'
require_relative '../roman_numeral_kata'

describe 'Numbers' do
	describe '#toRoman' do ##converts Arabic numbers to Roman numerals

		before(:each) do
			@number1 = Numbers.new(1)
			@number2 = Numbers.new(2)
			@number3 = Numbers.new(3)
		end

		it 'converts Arabic 1 to Roman numeral I' do
			expect(@number1.toRoman(1)).to eq 'I'
		end

		it 'converts Arabic 2 to Roman numeral II' do
			expect(@number2.toRoman(2)).to eq 'II'
		end

		it 'converts Arabic 3 to Roman numeral III' do
			expect(@number3.toRoman(3)).to eq 'III'
		end

	end
end
