require 'spec_helper'
require_relative '../roman_numerals.rb'

describe '#to_roman' do
	it 'takes integer as argument and returns string with value equivalent of Roman numeral' do
		expect(to_roman(5)).to eq 'V'
	it 'splits a multi-digit number into an array of single digits' do
		expect(to_roman(21)).to eq ['2','1']
	it 'matches numbers in array to values in hash and adds the values' do
		expect(to_roman(20)).to eq ['X', 'X']
	end
	end
	end
end

describe '#to_arabic' do
	it 'matches the key of argument entered and returns its value' do
		expect(to_arabic(V)).to eq 5
	it 'splits argument into an array' do
		expect(to_arabic(VI)).to eq ['V', 'I']
	it 'checks if array at indices 0,1,2,3 include I, V, X, L, C, M finds the roman numeral value in the hash, then adds the values' do
		expect(to_arabic(MMMM)).to eq 4000
		expect(to_arabic(MCXX)).to eq 1120
	it 'checks if array at indices 0,1,2 include I, V, X, L, C, M finds the roman numeral value in the hash, then and adds the values' do
		expect(to_arabic(LXX)).to eq 70
	it 'checks if array at indices 0,1 both include I, V, X, L, C, M finds the roman numeral value in the hash, then and adds the values' do
		expect(to_arabic(VI)).to eq 6
	it 'checks if array at index 0 is I and at index 1 is V or X, finds the roman numeral value in the hash, substracts index 1 from 0, then prints the difference' do
		expect(to_arabic(IX)).to eq 9
	it 'checks if array at index 0 is C and at index 1 is D, finds the roman numeral value in the hash, substract index 1 from 0, then adds the remaining values' do
		expect(to_arabic(CDL)).to eq 450
	it 'checks array at index 0 is X and at index 1 is L, finds the roman numeral value in the hash, subtracts index 1 from 0, then adds the remaining values' do
	end
	end
	end
	end
	end
	end
	end
	end
end
