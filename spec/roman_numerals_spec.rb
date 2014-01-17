require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do

	# Tests for 1 digit numbers
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

	# Tests for 2 digit numbers
	it 'translates an integer of 2 digits (10-99) into roman numerals' do
		expect(roman_numerals(10)).to eq 'X'
		expect(roman_numerals(30)).to eq 'XXX'
		expect(roman_numerals(44)).to eq 'XLIV'
		expect(roman_numerals(40)).to eq 'XL'
		expect(roman_numerals(77)).to eq 'LXXVII'
		expect(roman_numerals(80)).to eq 'LXXX'
		expect(roman_numerals(93)).to eq 'XCIII'
		expect(roman_numerals(90)).to eq 'XC'
	end

	# Tests for 3 digit numbers
	it 'translates an integer of 3 digits (100-999) into roman numerals' do
		expect(roman_numerals(110)).to eq 'CX'
		expect(roman_numerals(123)).to eq 'CXXIII'
		expect(roman_numerals(135)).to eq 'CXXXV'
		expect(roman_numerals(140)).to eq 'CXL'
		expect(roman_numerals(150)).to eq 'CL'
		expect(roman_numerals(185)).to eq 'CLXXXV'
		expect(roman_numerals(190)).to eq 'CXC'
	end

	# Tests for 4 digit numbers
	it 'translates an integer of 4 digits (1000-4000) into roman numerals' do
		expect(roman_numerals(1000)).to eq 'M'
		expect(roman_numerals(2375)).to eq 'MMCCCLXXV'
		expect(roman_numerals(3012)).to eq 'MMMXII'
		expect(roman_numerals(4000)).to eq 'MMMM'
	end

end

describe '#to_arabic' do

	# it 'takes a string of a roman numeral and returns an array of characters' do
	# 	expect(to_arabic('III')).to eq ['I','I','I']
	# end

	it 'evaluates the sum of the characters based on their roman value if characters in descending order' do
		expect(to_arabic('III')).to eq 3
		expect(to_arabic('VIII')).to eq 8
		expect(to_arabic('II')).to eq 2
		expect(to_arabic('I')).to eq 1
		expect(to_arabic('V')).to eq 5
		expect(to_arabic('X')).to eq 10
		expect(to_arabic('XV')).to eq 15
		expect(to_arabic('L')).to eq 50
		expect(to_arabic('CC')).to eq 200
		expect(to_arabic('D')).to eq 500
		expect(to_arabic('MMM')).to eq 3000
	end

	it 'evaluates the sum of the value of roman characters in ascending order' do
		expect(to_arabic('IV')).to eq 4
		expect(to_arabic('IX')).to eq 9
		expect(to_arabic('CXC')).to eq 190
		expect(to_arabic('MCMLXXXIX')).to eq 1989
		expect(to_arabic('MCXIX')).to eq 1119
		expect(to_arabic('MMMCCCLXIX')).to eq 3369
	end

end





