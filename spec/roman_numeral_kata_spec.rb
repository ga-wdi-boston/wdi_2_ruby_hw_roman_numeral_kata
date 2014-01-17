require 'spec_helper'
require_relative '../roman_numeral_kata'

describe 'Numbers' do
	describe '#toRoman' do ##converts Arabic numbers to Roman numerals

		before :each do
			@arabic = Numbers.new
		end

		it 'converts Arabic to Roman numerals' do
			expect(@arabic.toRoman(1)).to eq 'I'
		end
	end
end
