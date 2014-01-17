require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
  it 'returns the roman numeral string I when passed the integer 1' do
    expect(to_roman(1)).to eq 'I'
  end

  it 'returns the roman numeral string V when passed the integer 5' do
    expect(to_roman(5)).to eq 'V'
  end
end
