require 'spec_helper'
require_relative '../lib/roman_numeral'

describe '#to_roman' do
	it "returns I if you input 1" do
		expect(to_roman(2)).to eq 'II'
	end
end


