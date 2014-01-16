require 'spec_helper'
require_relative '../roman.rb'

describe '#to_roman' do

	it 'should return i when passed 1' do
		expect(to_roman(1)).to eq 'I'
	end

	it 'should return ii when passed 2' do
		expect(to_roman(2)).to eq 'II'
	end

	it 'should return IV when passed 4' do
		expect(to_roman(4)).to eq 'IV'
	end
	it 'should return V when passed 5' do
		expect(to_roman(5)).to eq 'V'
	end
end
