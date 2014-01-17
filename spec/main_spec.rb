require 'spec_helper'
require_relative '../main'


describe Fixnum do
	describe '.to_roman' do
		it 'adds "m" to roman numeral value for multiples of 1000' do
			expect(1000.to_roman).to eq 'M'
			expect(2000.to_roman).to eq 'MM'
		end
		it 'adds "d" to roman numeral value for multiples of 500' do
			expect(500.to_roman).to eq 'D'
			expect(1500.to_roman).to eq 'MD'
		end

		it 'adds "c" to roman numeral value for multiples of 100' do
			expect(100.to_roman).to eq 'C'
			expect(1700.to_roman).to eq 'MDCC'
		end

		it 'adds "l" to roman numeral value for multiples of 50' do
			expect(50.to_roman).to eq 'L'
			expect(1750.to_roman).to eq 'MDCCL'
		end

		it 'adds "x" to roman numeral value for multiples of 10' do
			expect(30.to_roman).to eq 'XXX'

			expect(1760.to_roman).to eq 'MDCCLX'
		end

		it 'adds "ix" to value for numbers greater than 10 ending in 9' do
			expect(29.to_roman).to eq 'XXIX'
			expect(79.to_roman).to eq 'LXXIX'
		end

		it 'adds "v" to roman numeral value for multiples of 5' do
			expect(5.to_roman).to eq 'V'

			expect(25.to_roman).to eq 'XXV'
		end

		it 'adds "i" to roman numeral value for multiples of 1' do
			expect(3.to_roman).to eq 'III'

			expect(28.to_roman).to eq 'XXVIII'
		end
	end
end


