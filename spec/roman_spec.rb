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
	
end
