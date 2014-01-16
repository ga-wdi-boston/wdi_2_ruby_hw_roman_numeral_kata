require 'spec_helper'
require_relative '../main'

describe Fixnum do
	describe '.to_roman' do
		it 'adds "m" to roman numeral value for multiples of 1000' do
			expect(1000.to_roman).to eq 'm'
			expect(2000.to_roman).to eq 'mm'
		end
		it 'adds "d" to roman numeral value for multiples of 500' do
			expect(500.to_roman).to eq 'd'
			expect(1500.to_roman).to eq 'md'
		end

		it 'adds "c" to roman number value for multiples of 100' do
			expect(100.to_roman).to eq 'c'
			expect(1700.to_roman).to eq 'mdcc'
		end


	end
end
