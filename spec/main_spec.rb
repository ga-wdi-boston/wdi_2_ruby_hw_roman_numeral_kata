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
	end
end
