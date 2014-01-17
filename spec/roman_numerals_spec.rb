require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
  it 'returns a roman numeral string when passed an integer' do
    expect(to_roman(1)).to eq 'I'
  end
end
