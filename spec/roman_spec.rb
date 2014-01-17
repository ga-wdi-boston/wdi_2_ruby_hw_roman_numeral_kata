require 'spec_helper'
require_relative '../roman.rb'

describe '#to_roman' do

	numerals = {
    1000 => "M",
     900 => "CM",
     500 => "D",
     400 => "CD",
     100 => "C",
      90 => "XC",
      50 => "L",
      40 => "XL",
      10 => "X",
        9 => "IX",
        5 => "V",
        4 => "IV",
        1 => "I",
}

	it 'should return i when passed 1' do
		expect(to_roman(1, numerals)).to eq 'I'
	end

	it 'should return ii when passed 2' do
		expect(to_roman(2, numerals)).to eq 'II'
	end

	it 'should return IV when passed 4' do
		expect(to_roman(4, numerals)).to eq 'IV'
	end
	it 'should return V when passed 5' do
		expect(to_roman(5, numerals)).to eq 'V'
	end
	it 'should return correct when passed 6-8' do
		expect(to_roman(6, numerals)).to eq 'VI'
		expect(to_roman(8, numerals)).to eq 'VIII'
	end
	it 'should return correct when passed 10-99' do
		expect(to_roman(10, numerals)).to eq 'X'
		expect(to_roman(44, numerals)).to eq 'XLIV'
		expect(to_roman(99, numerals)).to eq 'XCIX'
	end
end
