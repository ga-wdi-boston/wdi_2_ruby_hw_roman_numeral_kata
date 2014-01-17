require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
	it 'translates an integer under 10 into roman numerals' do
		expect(roman_numerals(0)).to eq ''
		expect(roman_numerals(1)).to eq 'I'
		expect(roman_numerals(2)).to eq 'II'
		expect(roman_numerals(3)).to eq 'III'
		expect(roman_numerals(4)).to eq 'IV'
		expect(roman_numerals(5)).to eq 'V'
		expect(roman_numerals(8)).to eq 'VIII'
		expect(roman_numerals(9)).to eq 'IX'
	end

	it 'translates an integer of 2 digits (10-99) into roman numerals' do
		expect(roman_numerals(10)).to eq 'X'

	end

end