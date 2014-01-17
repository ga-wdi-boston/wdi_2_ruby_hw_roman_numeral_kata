require_relative '../roman_numerals.rb'

describe '#to_roman' do

	it 'raises an error if the argument is not a single integer' do
		expect{ to_roman("string") }.to raise_error "Please enter a single integer from 1-3000"
		expect{ to_roman(1,2) }.to raise_error "Please enter a single integer from 1-3000"
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

	it 'converts numbers from 30-80 to a roman numeral string' do
		expect(to_roman(39)).to eq "XXXIX"
		expect(to_roman(42)).to eq "XLII"
		expect(to_roman(74)).to eq "LXXIV"
		expect(to_roman(67)).to eq "LXVII"
	end

	it 'converts numbers from 80-3000 to a roman numeral string' do
		expect(to_roman(95)).to eq "XCV"
		expect(to_roman(1159)).to eq "MCLIX"
		expect(to_roman(2600)).to eq "MMDC"
		expect(to_roman(461)).to eq "CDLXI"
		expect(to_roman(1483)).to eq "MCDLXXXIII"
		expect(to_roman(1985)).to eq "MCMLXXXV"
		expect(to_roman(2000)).to eq "MM"
		expect(to_roman(2014)).to eq "MMXIV"
	end

end

describe '#to_arabic' do
	it 'raises an error if the argument is not a single string' do
		expect{ to_arabic(10) }.to raise_error "Please enter a single string!"
	end

	it 'converts roman numerals 1-3000 that don\'t involve subtraction to arabic numbers' do
		expect(to_arabic("X")).to eq 10
		expect(to_arabic("MMDC")).to eq 2600
		expect(to_arabic("DCCXVIII")).to eq 718
		expect(to_arabic("LXVII")).to eq 67
	end

	it 'converts roman numerals 1-3000 that do involve subtraction to arabic numbers' do
		expect(to_arabic("IV")).to eq 4
		expect(to_arabic("XXIX")).to eq 29
		expect(to_arabic("CMLIX")).to eq 959
		expect(to_arabic("MMCDXCIV")).to eq 2494
		expect(to_arabic("MCMXCIX")).to eq 1999
	end

end
