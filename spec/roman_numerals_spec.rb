require_relative '../roman_numerals.rb'

describe '#to_roman' do

	it 'raises an error if the argument is not a single integer' do
		expect{ to_roman("string") }.to raise_error "Please enter a single integer from 1-2000"
		expect{ to_roman(1,2) }.to raise_error "Please enter a single integer from 1-2000"
	end

	it 'converts numbers from 1-10 to a roman numeral string' do
		expect(to_roman(3)).to eq "III"
		expect(to_roman(4)).to eq "IV"
		expect(to_roman(10)).to eq "X"
	end

	it 'converts numbers from 11-30 to a roman numeral string' do
		expect(to_roman(11)).to eq "XI"
		expect(to_roman(18)).to eq "XVIII"
		expect(to_roman(25)).to eq "XXV"
		expect(to_roman(29)).to eq "XXIX"
	end

end
