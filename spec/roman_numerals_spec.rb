require 'spec_helper'
require_relative '../roman_numerals.rb'

describe '#to_roman' do
	it 'accepts integer as argument and returns string with value being equivalent of Roman numeral' do
		expect(to_roman(5)).to eq 'V'
	end
end