require 'spec_helper'
require_relative '../lib/fix_num'

describe RomanNum do

	describe '#initialize' do
	let(:tester){RomanNum.new('XIII')}

		it 'creates a new instance of RomanNum class when passed a roman string' do
			expect(tester.class).to eq RomanNum
		end

		it 'assigns the roman string to a number attribute' do
			expect(tester.number).to eq 'XIII'
		end
	end

	describe '#to_i' do
	let(:tester){RomanNum.new('XIII')}

		it 'returns an arabic number equivilant to the object\'s roman value' do
			expect(tester.to_i).to eq 13
		end
	end

end

describe Fixnum do
	describe '#to_roman' do
		it 'returns an isntance of a RomanNum when called on a Fixnum' do
			expect(8.to_roman.class).to eq RomanNum
		end
	end
end
