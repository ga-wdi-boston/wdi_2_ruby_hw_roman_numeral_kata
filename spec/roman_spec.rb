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
	it 'will return "XXII" if pass 22' do
		expect(to_roman(22)).to eq 'XXII'
	end
	it 'will return "XXXIX" if pass 39' do
		expect(to_roman(39)).to eq 'XXXIX'
	end
	it 'will return "XXXVII" if pass 37' do
		expect(to_roman(37)).to eq 'XXXVII'
	end
	it 'will return "XXXIV" if pass 34' do
		expect(to_roman(34)).to eq 'XXXIV'
	end
	it 'will return "XLVII" if pass 47' do
		expect(to_roman(47)).to eq 'XLVII'
	end
	it 'will return "LXXII" if pass 72' do
		expect(to_roman(72)).to eq 'LXXII'
	end
	it 'will return "LXXXIX" if pass 89' do
		expect(to_roman(89)).to eq 'LXXXIX'
	end
	it 'will return "XCIX" if pass 99' do
		expect(to_roman(99)).to eq 'XCIX'
	end
	it 'will return "CDXVII" if pass 417' do
		expect(to_roman(417)).to eq 'CDXVII'
	end
		it 'will return "DCCCXC" if pass 890' do
		expect(to_roman(890)).to eq 'DCCCXC'
	end
		it 'will return "MDCCC" if pass 1800' do
		expect(to_roman(1800)).to eq 'MDCCC'
	end
	it 'will return "MCMLXII" if pass 1962' do
		expect(to_roman(1962)).to eq 'MCMLXII'
	end
	it 'will return "MM" if pass 2000' do
		expect(to_roman(2000)).to eq 'MM'
	end
end

describe '#to_arabic' do
	it 'will return i if pass I' do
		expect(to_arabic('I')).to eq 1
	end
	it 'will return 2 if pass II' do
		expect(to_arabic('II')).to eq 2
	end
	it 'will return 4 if pass IV' do
		expect(to_arabic('IV')).to eq 4
	end
	it 'will return 6 if pass VI' do
		expect(to_arabic('VI')).to eq 6 
	end
	it 'will return 5 if pass V' do
		expect(to_arabic('V')).to eq 5
	end
	it 'will return 9 if pass IX' do
		expect(to_arabic('IX')).to eq 9
	end
	it 'will return 539 if pass DXXXIX' do
		expect(to_arabic('DXXXIX')).to eq 539
	end
	it 'will return 740 if pass DCCXL' do
		expect(to_arabic('DCCXL')).to eq 740
	end
	it 'will return 1011 if pass MXI' do
		expect(to_arabic('MXI')).to eq 1011
	end
	it 'will return 1338 if pass MCCCXXXVIII' do
		expect(to_arabic('MCCCXXXVIII')).to eq 1338
	end
	it 'will return 1498 if pass MCDXCVIII' do
		expect(to_arabic('MCDXCVIII')).to eq 1498
	end
	it 'will return 1938 if pass MCMXXXVIII' do
		expect(to_arabic("MCMXXXVIII")).to eq 1938
	end
end
