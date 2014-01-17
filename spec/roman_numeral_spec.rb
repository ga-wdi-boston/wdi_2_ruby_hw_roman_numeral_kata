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

	it 'returns IX if you input 9' do
		expect(to_roman(9)).to eq 'IX'
	end

	it 'returns XXXVII if you input 37' do
		expect(to_roman(37)).to eq 'XXXVII'
	end

	it 'returns LXXXVII if you input  87' do
		expect(to_roman(87)).to eq 'LXXXVII'
	end

	it 'returns CCL if you input 250' do
		expect(to_roman(250)).to eq 'CCL'
	end

	it 'returns DCCXXXVII if you input 737' do
		expect(to_roman(737)).to eq 'DCCXXXVII'
	end

end


