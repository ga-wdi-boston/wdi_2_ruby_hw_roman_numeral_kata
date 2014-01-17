require 'spec_helper'
require_relative '../lib/roman'

describe '#to_roman' do
	it 'will return the roman number I of integer 1' do
		expect(to_roman(1)).to eq 'I'
	end

end
