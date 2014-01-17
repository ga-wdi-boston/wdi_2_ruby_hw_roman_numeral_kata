require 'spec_helper'
require_relative '../roman_numerals'

describe '#to_roman' do
  it 'returns the roman numeral string I when passed the integer 1' do
    expect(to_roman(1)).to eq 'I'
  end

  it 'returns the roman numeral string V when passed the integer 5' do
    expect(to_roman(5)).to eq 'V'
  end

  it 'returns the roman numeral string X when passed the integer 10' do
    expect(to_roman(10)).to eq 'X'
  end

  it 'returns the roman numeral strings II and III when passed the integers 2 and 3' do
    expect(to_roman(2)).to eq 'II'
    expect(to_roman(3)).to eq 'III'
  end

  it 'returns the roman numeral string IV when passed the integer 4' do
    expect(to_roman(4)).to eq 'IV'
  end
end
