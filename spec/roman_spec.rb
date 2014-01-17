require 'spec_helper'
require_relative '../roman'

describe '#to_roman' do

	it 'accepts a single integer as an argument and returns a string' do
		expect(to_roman(7).class).to eq String
	end

	it 'converts numbers 1 - 10 to Roman Numerals' do
		expect(to_roman(1)).to eq "I"
		expect(to_roman(2)).to eq "II"
		expect(to_roman(3)).to eq "III"
		expect(to_roman(4)).to eq "IV"
		expect(to_roman(5)).to eq "V"
		expect(to_roman(6)).to eq "VI"
		expect(to_roman(7)).to eq "VII"
		expect(to_roman(8)).to eq "VIII"
		expect(to_roman(9)).to eq "IX"
		expect(to_roman(10)).to eq "X"
	end

	it 'converts numbers 11 - 99 to Roman Numerals' do
		expect(to_roman(11)).to eq "XI"
		expect(to_roman(12)).to eq "XII"
		expect(to_roman(13)).to eq "XIII"
		expect(to_roman(14)).to eq "XIV"
		expect(to_roman(15)).to eq "XV"
		expect(to_roman(16)).to eq "XVI"
		expect(to_roman(17)).to eq "XVII"
		expect(to_roman(20)).to eq "XX"
		expect(to_roman(38)).to eq "XXXVIII"
		expect(to_roman(49)).to eq "XLIX"
		expect(to_roman(76)).to eq "LXXVI"
		expect(to_roman(96)).to eq "XCVI"
	end

	it 'converts numbers 100-999 to Roman Numerals' do
		expect(to_roman(100)).to eq "C"
		expect(to_roman(200)).to eq "CC"
		expect(to_roman(333)).to eq "CCCXXXIII"
		expect(to_roman(901)).to eq "CMI"
		expect(to_roman(999)).to eq "CMXCIX"
	end


end


# describe 'to_arabic' do

# end




