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

	it 'returns MDCCXXXVII if you input 1737' do
		expect(to_roman(1737)).to eq 'MDCCXXXVII'
	end

end

describe 'to_arabic' do
	it 'returns 1 if you input I' do
		expect(to_arabic('II')).to eq 2
	end

	it 'returns 4 if you input IV' do
		expect(to_arabic('IV')).to eq 4
	end
	it 'returns 7 if you input VII' do
		expect(to_arabic('VII')).to eq 7
	end
	it 'returns 9 if you input IX' do
		expect(to_arabic('IX')).to eq 9
	end
	it 'returns 37 if you input XXXVII' do
		expect(to_arabic('XXXVII')).to eq 37
	end
	it 'returns 87 if you input LXXXVII' do
		expect(to_arabic('LXXXVII')).to eq 87
	end
	it 'returns 187 if you input CXXXVII' do
		expect(to_arabic('CLXXXVII')).to eq 187
	end
	it 'returns 687 if you input DCLXXXVII' do
		expect(to_arabic('DCLXXXVII')).to eq 687
	end

	it 'returns 1687 if you input MDCLXXXVII' do
		expect(to_arabic('MDCLXXXVII')).to eq 1687
	end

end


