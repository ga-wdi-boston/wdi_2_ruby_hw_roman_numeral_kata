require 'spec_helper'
require_relative '../lib/roman_numeral'

describe '#to_roman' do
	it "returns II if you input 1" do
		expect(to_roman(2)).to eq 'II'
	end

	it 'returns IV if you input 4' do
		expect(to_roman(4)).to eq 'IV' 
	end

	it 'returns VII if you input 7' do
		expect(to_roman(7)).to eq 'VII'
	end
end


