require 'spec_helper'
require_relative '../roman.rb'

describe '#to_roman' do

	it 'should return i when passed 1' do
		expect(to_roman(1)).to eq 'i'
	end
end
