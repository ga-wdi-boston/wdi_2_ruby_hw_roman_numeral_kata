require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
	it 'translates an integer under 5 into roman numerals using "I" and "V"' do
		expect(roman_numerals(1)).to eq 'I'
	end
end