require 'spec_helper'
require_relative '../roman_class'

describe RomanNum do
	describe '.to_i' do
		it 'accepts a roman numeral string and outputs the corresponding arabic value' do
			expect(RomanNum.new('mdcc').to_i).to eq 1700
			expect(RomanNum.new('mcd').to_i).to eq 1400
			expect(RomanNum.new('iv').to_i).to eq 4
		end
	end
end
