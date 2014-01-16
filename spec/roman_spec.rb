require 'spec_helper'
require_relative '../roman'

describe '#to_roman' do
	it 'accepts a single integer as an argument and returns a string' do
		expect(to_roman(7)).to eq "7"
	end
end


# describe 'to_arabic' do

# end




