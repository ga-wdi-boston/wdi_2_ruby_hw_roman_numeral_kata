require 'spec_helper'
require_relative '../roman.rb'

describe '#to_roman' do

	it 'should return i when passed 1' do
		expect(to_roman(1)).to eq 'I'
	end

	it 'should return ii when passed 2' do
		expect(to_roman(2)).to eq 'II'
	end
end
