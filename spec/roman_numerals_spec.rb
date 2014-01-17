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

  it 'returns the roman numberal strings VI, VII, and VIII when passed the integers, 6, 7, and 8' do
    expect(to_roman(6)).to eq 'VI'
    expect(to_roman(7)).to eq 'VII'
    expect(to_roman(8)).to eq 'VIII'
  end

  it 'returns the roman numeral string IX when passed the integer 9' do
    expect(to_roman(9)).to eq 'IX'
  end

  it 'returns the roman numeral string CLII when passed the integer 152' do
    expect(to_roman(152)).to eq 'CLII'
  end
end
