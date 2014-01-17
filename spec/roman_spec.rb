require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
	it 'will return the roman number I of integer 1' do
		expect(to_roman(1)).to eq 'I'
	end
	it 'will return the roman number of II if interger 2' do
		expect(to_roman(2)).to eq 'II'
	end
	it 'will return "IV" if pass 4' do
		expect(to_roman(4)).to eq 'IV'
	end
	it 'will return "VI" if pass 6' do
		expect(to_roman(6)).to eq 'VI' 
	end
	it 'will return "V" if pass 5' do
		expect(to_roman(5)).to eq 'V'
	end
	it 'will return "IX" if pass 9' do
		expect(to_roman(9)).to eq 'IX'
	end
end
